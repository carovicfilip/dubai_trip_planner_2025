class DummyPlace {
  final String name;
  final String imageUrl;
  final String openingHours;
  final String description;
  final String reviewSummary;

  const DummyPlace({
    required this.name,
    required this.imageUrl,
    required this.openingHours,
    required this.description,
    required this.reviewSummary,
  });
}


const Map<String, List<DummyPlace>> dummyPlacesByCategory = {
  'must_see': [
    DummyPlace(
      name: 'Burj Khalifa',
      imageUrl:
      'https://images.unsplash.com/photo-1582672060674-bc2bd808a8b5?auto=format&fit=crop&w=1200&q=80',
      openingHours: '8:30 AM–12:00 AM\nLast entry: 11:00 PM',
      description:
      'World\'s tallest building with panoramic observation decks overlooking Downtown Dubai.',
      reviewSummary: '4.8 ★ (120k reviews)',
    ),
    DummyPlace(
      name: 'Burj Khalifa',
      imageUrl:
      'https://images.unsplash.com/photo-1582672060674-bc2bd808a8b5?auto=format&fit=crop&w=1200&q=80',
      openingHours: '8:30 AM–12:00 AM\nLast entry: 11:00 PM',
      description:
      'World\'s tallest building with panoramic observation decks overlooking Downtown Dubai.',
      reviewSummary: '4.8 ★ (120k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Fountain',
      imageUrl:
      'https://images.unsplash.com/photo-1582672060674-bc2bd808a8b5?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Afternoon: 01:00 PM & 01:30 PM (Fri: 02:00 PM & 02:30 PM), Evening: 06:00 PM - 11:00 PM (every 30 min)',
      description:
      'Choreographed fountain show on the Burj Lake featuring lights, music, and soaring water jets.',
      reviewSummary: '4.7 ★ (85k reviews)',
    ),
    DummyPlace(
      name: 'Museum of the Future',
      imageUrl:
      'https://images.unsplash.com/photo-1645116431720-da9f527bee9a?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 06:00 PM (Last entry: 05:00 PM)',
      description:
      'Futuristic landmark exploring science and innovation through immersive exhibits.',
      reviewSummary: '4.6 ★ (42k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Frame',
      imageUrl:
      'https://images.unsplash.com/photo-1580933073521-dc49ac0d4e6a?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 09:00 AM - 09:00 PM',
      description:
      'Iconic picture frame structure offering contrasting views of old and new Dubai.',
      reviewSummary: '4.5 ★ (33k reviews)',
    ),
    DummyPlace(
      name: 'Palm Jumeirah Boardwalk',
      imageUrl:
      'https://images.unsplash.com/photo-1610232695158-18772d7746f9?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Open 24 hours',
      description:
      'Scenic walkway along the outer crescent of Palm Jumeirah with food trucks and sea views.',
      reviewSummary: '4.4 ★ (18k reviews)',
    ),
  ],
  'restaurants': [
    DummyPlace(
      name: 'Nobu Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Dinner: Sun-Wed 06:00 PM - 11:00 PM, Thu-Sat 06:00 PM - 11:30 PM; Lunch: Sat-Sun 12:30 PM - 03:00 PM',
      description:
      'Globally acclaimed Japanese-Peruvian fine dining at Atlantis, The Palm.',
      reviewSummary: '4.7 ★ (9.8k reviews)',
    ),
    DummyPlace(
      name: 'Zuma Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1541542684-4abf2abade83?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 12:00 PM - 03:30 PM, 07:00 PM - 12:00 AM',
      description:
      'Stylish izakaya-style restaurant known for contemporary Japanese cuisine.',
      reviewSummary: '4.6 ★ (14k reviews)',
    ),
    DummyPlace(
      name: 'Pierchic',
      imageUrl:
      'https://images.unsplash.com/photo-1528605248644-14dd04022da1?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 01:00 PM - 02:30 AM',
      description:
      'Romantic overwater dining offering fresh seafood and Arabian Gulf views.',
      reviewSummary: '4.5 ★ (6.1k reviews)',
    ),
    DummyPlace(
      name: 'Al Hadheerah',
      imageUrl:
      'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 07:00 PM - 11:00 PM',
      description:
      'Desert restaurant at Bab Al Shams with live entertainment and traditional Arabic buffet.',
      reviewSummary: '4.4 ★ (5.4k reviews)',
    ),
    DummyPlace(
      name: 'COYA Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 12:30 PM - 03:30 PM, 07:00 PM - 12:00 AM',
      description:
      'Vibrant Peruvian dining spot featuring ceviche, grills, and lively ambiance.',
      reviewSummary: '4.6 ★ (7.9k reviews)',
    ),
  ],
  'nightlife': [
    DummyPlace(
      name: 'WHITE Beach Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 01:00 AM',
      description:
      'Beach club and nightlife venue at Atlantis with DJ sets and skyline views.',
      reviewSummary: '4.5 ★ (12k reviews)',
    ),
    DummyPlace(
      name: 'Soho Garden',
      imageUrl:
      'https://images.unsplash.com/photo-1495745966610-2a67d66d82b9?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 08:00 PM - 03:00 AM',
      description:
      'Hybrid nightlife spot combining bars, lounges, and live performances.',
      reviewSummary: '4.4 ★ (9.2k reviews)',
    ),
    DummyPlace(
      name: 'Billionaire Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 09:00 PM - 03:00 AM',
      description:
      'Dinner show and nightclub blending Italian cuisine with high-energy acts.',
      reviewSummary: '4.6 ★ (7.5k reviews)',
    ),
    DummyPlace(
      name: 'Blu Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1527529482837-4698179dc6ce?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 08:00 PM - 03:00 AM',
      description:
      'Sky-high lounge on Sheikh Zayed Road featuring international DJs and themed nights.',
      reviewSummary: '4.3 ★ (6.8k reviews)',
    ),
    DummyPlace(
      name: 'Secret Room Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Wednesday - Sunday: 11:00 PM - 03:00 AM',
      description:
      'Hip-hop focused underground club with customized supercar valet entrance.',
      reviewSummary: '4.2 ★ (4.1k reviews)',
    ),
  ],
  'beaches_pools': [
    DummyPlace(
      name: 'Kite Beach',
      imageUrl:
      'https://images.unsplash.com/photo-1603294242171-2d1be2fab0f2?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 07:00 AM - 10:00 PM',
      description:
      'Popular public beach for kite surfing, jogging, and casual seaside dining.',
      reviewSummary: '4.6 ★ (23k reviews)',
    ),
    DummyPlace(
      name: 'JBR Beach',
      imageUrl:
      'https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 07:00 AM - 11:00 PM',
      description:
      'Bustling beachfront with watersports, shops, and outdoor cinema experiences.',
      reviewSummary: '4.5 ★ (31k reviews)',
    ),
    DummyPlace(
      name: 'La Mer',
      imageUrl:
      'https://images.unsplash.com/photo-1520294719072-1b44f095c350?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 10:00 PM',
      description:
      'Urban beachfront destination featuring cafes, street art, and water play areas.',
      reviewSummary: '4.4 ★ (17k reviews)',
    ),
    DummyPlace(
      name: 'Nikki Beach Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1505761671935-60b3a7427bad?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 11:00 AM - 08:00 PM',
      description:
      'Chic beach club with pool parties, cabanas, and a Mediterranean-inspired menu.',
      reviewSummary: '4.5 ★ (9.1k reviews)',
    ),
    DummyPlace(
      name: 'Atlantis Aquaventure Beach',
      imageUrl:
      'https://images.unsplash.com/photo-1534449905966-27973fb2b826?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 06:00 PM',
      description:
      'Private beach access included with Aquaventure Waterpark tickets at Atlantis.',
      reviewSummary: '4.7 ★ (15k reviews)',
    ),
  ],
  'culture_museums': [
    DummyPlace(
      name: 'Al Fahidi Historical Neighbourhood',
      imageUrl:
      'https://images.unsplash.com/photo-1578926125528-9f13d10e8f3d?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 09:00 AM - 06:00 PM',
      description:
      'Restored heritage quarter with wind-tower houses, museums, and art galleries.',
      reviewSummary: '4.3 ★ (8.6k reviews)',
    ),
    DummyPlace(
      name: 'Etihad Museum',
      imageUrl:
      'https://images.unsplash.com/photo-1616690710400-5c3e5f3cf249?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 08:00 PM',
      description:
      'Modern museum chronicling the founding of the United Arab Emirates.',
      reviewSummary: '4.5 ★ (5.2k reviews)',
    ),
    DummyPlace(
      name: 'Al Shindagha Museum',
      imageUrl:
      'https://images.unsplash.com/photo-1544986581-efac024faf62?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 08:00 PM',
      description:
      'Interactive exhibits exploring Dubai\'s maritime history along the Creek.',
    reviewSummary: '4.4 ★ (3.9k reviews)',
    ),
    DummyPlace(
      name: 'Sheikh Mohammed Centre for Cultural Understanding',
      imageUrl:
      'https://images.unsplash.com/photo-1544986581-efac024faf62?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Sunday - Thursday: 09:00 AM - 05:00 PM',
      description:
      'Cultural programs offering Emirati meals, tours, and Q&A sessions about local traditions.',
      reviewSummary: '4.8 ★ (2.4k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Opera Tour',
      imageUrl:
      'https://images.unsplash.com/photo-1531928351158-2f736078e0a1?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Guided tours: 10:30 AM & 02:30 PM Daily',
      description:
      'Guided walk through the dhow-shaped opera house detailing its architecture and history.',
      reviewSummary: '4.7 ★ (4.7k reviews)',
    ),
  ],
  'shopping': [
    DummyPlace(
      name: 'The Dubai Mall',
      imageUrl:
      'https://images.unsplash.com/photo-1565967511849-76a60a516170?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Sun-Thu: 10:00 AM - 11:00 PM, Fri-Sat: 10:00 AM - 12:00 AM',
      description:
      'World\'s largest destination for shopping, entertainment, and leisure beside Burj Khalifa.',
    reviewSummary: '4.7 ★ (140k reviews)',
    ),
    DummyPlace(
      name: 'Mall of the Emirates',
      imageUrl:
      'https://images.unsplash.com/photo-1596237563265-82d4a7c1bb95?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 12:00 AM',
      description:
      'Luxury shopping mall featuring Ski Dubai indoor ski slope and extensive dining.',
      reviewSummary: '4.7 ★ (141k reviews)',
    ),
    DummyPlace(
      name: 'City Walk',
      imageUrl:
      'https://images.unsplash.com/photo-1543352634-873f17a7a088?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 10:00 PM',
      description:
      'Outdoor lifestyle destination blending boutiques with cafes and street art.',
      reviewSummary: '4.5 ★ (22k reviews)',
    ),
    DummyPlace(
      name: 'Souk Madinat Jumeirah',
      imageUrl:
      'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 11:00 PM',
      description:
      'Modern bazaar styled after a traditional souk with waterways and abra rides.',
      reviewSummary: '4.6 ★ (18k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Festival City Mall',
      imageUrl:
      'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 10:00 PM',
      description:
      'Waterfront mall featuring IMAGINE laser show and a wide range of brands.',
      reviewSummary: '4.5 ★ (21k reviews)',
    ),
  ],
  'desert_adventure': [
    DummyPlace(
      name: 'Dubai Desert Conservation Reserve',
      imageUrl:
      'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Guided tours: 07:00 AM - 07:00 PM',
      description:
      'Protected desert habitat offering wildlife drives and eco-friendly safari experiences.',
      reviewSummary: '4.9 ★ (3.1k reviews)',
    ),
    DummyPlace(
      name: 'Platinum Heritage Safari',
      imageUrl:
      'https://images.unsplash.com/photo-1528821154947-1aa3d1c01f6b?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily departures: 06:00 AM & 03:00 PM',
      description:
      'Luxury vintage Land Rover safaris with Bedouin-style camps and cultural shows.',
      reviewSummary: '4.8 ★ (2.7k reviews)',
    ),
    DummyPlace(
      name: 'Al Marmoom Desert Conservation Reserve',
      imageUrl:
      'https://images.unsplash.com/photo-1533050487297-09b450131914?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 06:00 AM - 08:00 PM',
      description:
      'Lakeside desert reserve ideal for cycling, stargazing, and nature trails.',
      reviewSummary: '4.6 ★ (2.1k reviews)',
    ),
    DummyPlace(
      name: 'Skyhub Paramotors',
      imageUrl:
      'https://images.unsplash.com/photo-1528821154947-1aa3d1c01f6b?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily flights: 06:00 AM - 06:00 PM',
      description:
      'Aerial paramotor experiences over the desert dunes for adrenaline seekers.',
      reviewSummary: '4.7 ★ (1.4k reviews)',
    ),
    DummyPlace(
      name: 'Balloon Adventures Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily sunrise flights: 04:00 AM - 09:00 AM',
      description:
      'Hot air balloon rides offering sunrise views of the desert and wildlife.',
      reviewSummary: '4.9 ★ (1.9k reviews)',
    ),
  ],
  'family_fun': [
    DummyPlace(
      name: 'Dubai Parks and Resorts',
      imageUrl:
      'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 09:00 PM',
      description:
      'Theme park complex housing Motiongate, Bollywood Parks, and Legoland Water Park.',
      reviewSummary: '4.5 ★ (12k reviews)',
    ),
    DummyPlace(
      name: 'IMG Worlds of Adventure',
      imageUrl:
      'https://images.unsplash.com/photo-1527631746610-bca00a040d60?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 12:00 PM - 10:00 PM',
      description:
      'Indoor mega theme park featuring Marvel, Cartoon Network, and dinosaur zones.',
      reviewSummary: '4.4 ★ (16k reviews)',
    ),
    DummyPlace(
      name: 'The Green Planet',
      imageUrl:
      'https://images.unsplash.com/photo-1512455102796-7719f41c24e0?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 06:00 PM',
      description:
      'Indoor tropical biodome with over 3,000 plants and animals for educational fun.',
      reviewSummary: '4.6 ★ (9.4k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Aquarium & Underwater Zoo',
      imageUrl:
      'https://images.unsplash.com/photo-1556740749-887f6717d7e4?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Daily: 10:00 AM - 12:00 AM',
      description:
      'Huge aquarium inside The Dubai Mall featuring shark feeding and glass-bottom boat rides.',
      reviewSummary: '4.5 ★ (22k reviews)',
    ),
    DummyPlace(
      name: 'Legoland Dubai',
      imageUrl:
      'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1200&q=80',
      openingHours: 'Thursday - Tuesday: 10:00 AM - 06:00 PM',
      description:
      'Interactive LEGO-themed rides and attractions tailored to families with young children.',
      reviewSummary: '4.3 ★ (8.1k reviews)',
    ),
  ],
};