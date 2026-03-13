import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import '../models/destination.dart';
import '../widgets/destination_card.dart';

class DiscoverScreen extends StatefulWidget {
  final Function(Destination) onSave;

  const DiscoverScreen({super.key, required this.onSave});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final CardSwiperController controller = CardSwiperController();
  List<Destination> destinations = Destination.getMockData();
  int currentIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool _onSwipe(int previousIndex, int? currentIndex, CardSwiperDirection direction) {
    if (direction == CardSwiperDirection.right) {
      widget.onSave(destinations[previousIndex]);
    }
    // Left swipe does nothing (skip)
    return true; // Return true to allow the swipe animation to complete
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Discover Destinations',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(
              child: CardSwiper(
                controller: controller,
                cardsCount: destinations.length,
                onSwipe: _onSwipe,
                numberOfCardsDisplayed: 3,
                backCardOffset: const Offset(40, 40),
                padding: const EdgeInsets.all(24.0),
                cardBuilder: (context, index, percentThresholdX, percentThresholdY) => DestinationCard(
                  cityName: destinations[index].cityName,
                  imageUrl: destinations[index].imageUrl,
                  tip: destinations[index].tip,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => controller.swipe(CardSwiperDirection.left),
                    icon: const Icon(Icons.close, color: Colors.red),
                    label: const Text('Skip'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.red,
                      elevation: 4.0,
                      shadowColor: Colors.black.withOpacity(0.1),
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 32.0),
                  ElevatedButton.icon(
                    onPressed: () => controller.swipe(CardSwiperDirection.right),
                    icon: const Icon(Icons.favorite, color: Colors.green),
                    label: const Text('Save'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.green,
                      elevation: 4.0,
                      shadowColor: Colors.black.withOpacity(0.1),
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
