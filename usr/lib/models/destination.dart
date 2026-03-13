class Destination {
  final String cityName;
  final String imageUrl;
  final String tip;

  Destination({
    required this.cityName,
    required this.imageUrl,
    required this.tip,
  });

  static List<Destination> getMockData() {
    return [
      Destination(
        cityName: 'Paris',
        imageUrl: 'https://images.unsplash.com/photo-1502602898536-47ad22581b52?w=400',
        tip: 'Stroll along the Seine at sunset for the best views of the Eiffel Tower.',
      ),
      Destination(
        cityName: 'Tokyo',
        imageUrl: 'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?w=400',
        tip: 'Visit Shibuya Crossing at night for an unforgettable light show.',
      ),
      Destination(
        cityName: 'New York',
        imageUrl: 'https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?w=400',
        tip: 'Take the Staten Island Ferry for free views of the Statue of Liberty.',
      ),
      Destination(
        cityName: 'Rome',
        imageUrl: 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=400',
        tip: 'Throw a coin into the Trevi Fountain to ensure your return to Rome.',
      ),
      Destination(
        cityName: 'Barcelona',
        imageUrl: 'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?w=400',
        tip: 'Explore Gaudí\'s Sagrada Familia and climb to the top for panoramic views.',
      ),
      Destination(
        cityName: 'Sydney',
        imageUrl: 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400',
        tip: 'Hike to the top of the Sydney Harbour Bridge for breathtaking vistas.',
      ),
      Destination(
        cityName: 'Amsterdam',
        imageUrl: 'https://images.unsplash.com/photo-1534351590666-13e3e96b5017?w=400',
        tip: 'Rent a bike and cycle through the picturesque canals.',
      ),
      Destination(
        cityName: 'Dubai',
        imageUrl: 'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=400',
        tip: 'Visit the Burj Khalifa at sunset for magical views.',
      ),
      Destination(
        cityName: 'Rio de Janeiro',
        imageUrl: 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?w=400',
        tip: 'Watch the sunrise from Sugarloaf Mountain.',
      ),
      Destination(
        cityName: 'Cape Town',
        imageUrl: 'https://images.unsplash.com/photo-1580060839134-75a5edca2e99?w=400',
        tip: 'Drive the scenic coastal road to the Cape Peninsula.',
      ),
    ];
  }
}