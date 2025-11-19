class DummyPlace {
  final String? name;
  final String? imageUrl;
  final String? openingHours;
  final String? description;
  final String? reviewSummary;
  final String? link;

  const DummyPlace({
    this.name,
    this.imageUrl,
    this.openingHours,
    this.description,
    this.reviewSummary,
    this.link,
  });
}

const Map<String, List<DummyPlace>> dummyPlacesByCategory = {
  'must_see': [
    DummyPlace(
      name: 'Burj Khalifa',
      imageUrl: 'https://media.cntraveler.com/photos/6424bdcf94f6ca4a2362319f/4:3/w_7720,h_5790,c_limit/Atlantis%20The%20Royal%20Dubai_cloud22-poolview.jpg',
      openingHours: '09:00 AM–11:00 PM Last entry: 10:15 PM',
      description:
          'The Burj Khalifa is the tallest building in the world at 828 meters, dominating the Dubai skyline. Its observation decks offer breathtaking panoramic views of the city, desert, and coastline. The tower is a global icon of engineering, innovation, and modern architecture.',
      reviewSummary: '4.7 (169k reviews)',
    ),
    DummyPlace(
      name: 'Palm Jumeirah',
      imageUrl: 'https://media.cntraveler.com/photos/6424bdcf94f6ca4a2362319f/4:3/w_7720,h_5790,c_limit/Atlantis%20The%20Royal%20Dubai_cloud22-poolview.jpg',
      openingHours: 'Open 24 hours',
      description:
          'Palm Jumeirah is an iconic man-made island shaped like a palm tree and known for luxury hotels and beachfront residences. It features world-class resorts like Atlantis The Palm and scenic waterfront promenades. The island is one of Dubai\'s most ambitious and recognizable engineering achievements. Scenic walkway along the outer crescent of Palm Jumeirah with food trucks and sea views.',
    ),
    DummyPlace(
      name: 'Burj Khalifa',
      imageUrl: 'https://media.cntraveler.com/photos/6424bdcf94f6ca4a2362319f/4:3/w_7720,h_5790,c_limit/Atlantis%20The%20Royal%20Dubai_cloud22-poolview.jpg',
      openingHours: '09:00 AM–11:00 PM\nLast entry: 10:15 PM',
      description:
          'The Burj Khalifa is the tallest building in the world at 828 meters, dominating the Dubai skyline. Its observation decks offer breathtaking panoramic views of the city, desert, and coastline. The tower is a global icon of engineering, innovation, and modern architecture.',
      reviewSummary: '4.7 (169k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Marina Walk',
      imageUrl: 'https://media.cntraveler.com/photos/6424bdcf94f6ca4a2362319f/4:3/w_7720,h_5790,c_limit/Atlantis%20The%20Royal%20Dubai_cloud22-poolview.jpg',
      openingHours: 'Open 24 hours',
      description:
          'Dubai Marina Walk is a lively 7-km waterfront promenade lined with restaurants, cafés, and retail outlets. It offers views of luxury yachts and striking high-rise towers. At night, the entire marina transforms with vibrant lights and outdoor dining.',
      reviewSummary: '4.7 (27k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Fountain',
      imageUrl: '',
      openingHours: 'Afternoon: 1:00 PM & 1:30 PM (Fri: 2:00 PM & 2:30 PM), Evening: 6:00 PM - 11:00 PM (every 30 min)',
      description:
          'The Dubai Fountain is the world’s largest choreographed fountain system, located on the Burj Lake beside Dubai Mall. Its water jets shoot up to 150 meters high, synchronized with music and lights. The nightly shows attract thousands of visitors and create one of Dubai’s most memorable experiences.',
      reviewSummary: '4.8 (137k reviews)',
    ),
    DummyPlace(
      name: 'Museum of the Future',
      imageUrl: '',
      openingHours: 'Daily: 09:00 AM - 9:00 PM',
      description:
          'The Museum of the Future is an architectural masterpiece known for its torus shape and illuminated Arabic calligraphy. Inside, immersive exhibitions explore the future of science, technology, and human innovation. It is considered one of the most advanced experiential museums in the world.',
      reviewSummary: '4.4 (48k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Frame',
      imageUrl: '',
      openingHours: 'Daily: 09:00 AM - 9:00 PM',
      description:
          'Dubai Frame is a 150-meter tall landmark designed as a giant picture frame representing "old" and "new" Dubai. Visitors can walk across a glass sky bridge with panoramic city views. The lower level hosts a museum showcasing the city\'s transformation over time.',
      reviewSummary: '4.6 (70k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Creek',
      imageUrl: '',
      openingHours: 'Open 24 hours',
      description:
          'Dubai Creek is a historic saltwater inlet that played a crucial role in the city\'s early trade and pearl-diving economy. Traditional wooden abras still ferry passengers across the water. The area blends old souks, cultural districts, and waterfront scenery.',
    ),
    DummyPlace(
      name: 'Dubai Mall',
      imageUrl: '',
      openingHours: 'Mon-Thu 10:00 AM - 11:00 PM, Fri-Sun 10:00 AM - 12:00 AM',
      description:
          'Dubai Mall is one of the world’s largest shopping and entertainment destinations, home to more than 1,200 stores. It also houses major attractions like Dubai Aquarium, VR Park, and an Olympic-sized ice rink. Located next to Burj Khalifa, it attracts millions of visitors each year.',
      reviewSummary: '4.7 (283.7k reviews)',
    ),
    DummyPlace(
      name: 'Al Fahidi Historical Neighbourhood',
      imageUrl: '',
      openingHours: 'Daily: 07:00 AM - 8:00 PM',
      description:
          'Al Fahidi is Dubai’s preserved heritage district featuring traditional wind-tower houses and narrow lanes. It offers museums, art galleries, and cultural centers that showcase life in Dubai before modernization. The area sits along Dubai Creek and remains one of the city’s key cultural attractions.',
    ),
    DummyPlace(
      name: 'La Perle',
      imageUrl: '',
      openingHours: 'Tuesday - Saturday 6:30 PM - 8:00 PM and 9:00 PM - 10:30 PM',
      description:
          'La Perle is a world-class live show combining acrobatics, aerial stunts, and high-tech visual effects. Its aqua-theater features a stage that floods and drains within seconds. Inspired by Dubai\'s culture and future, the performance delivers a breathtaking immersive experience.',
      reviewSummary: '4.6 (5.1k reviews)',
    ),
  ],
  'restaurants': [
    DummyPlace(
      name: 'Trèsind',
      imageUrl: '',
      openingHours: 'Daily: 12:00 PM - 11:45 PM',
      description:
          'Trèsind is a pioneer of modern Indian cuisine in Dubai, offering innovative dishes with refined presentation. The restaurant blends traditional flavors with contemporary techniques. It is known for its sophisticated tasting menus and chic, upscale atmosphere.',
      reviewSummary: '4.5 (2.7k reviews)',
    ),
    DummyPlace(
      name: 'FZN by Björn Frantzén',
      imageUrl: '',
      openingHours: 'Tuesday-Saturday 7:00 PM - 01:00 AM',
      description:
          'FZN as one of only two restaurants in the UAE awarded three Michelin stars, FZN offers an extraordinary multi-    course tasting menu that fuses refined European flavours with Japanese precision. Each dish is a masterpiece of European cuisine, served in a luxurious, Scandinavian-inspired setting. Ideal for special occasions, romantic dinners, and gourmet experiences, FZN stands as a pinnacle of modern gastronomy and fine dining in the region.',
      reviewSummary: '',
    ),
    DummyPlace(
      name: 'Zuma Dubai',
      imageUrl: '',
      openingHours: 'Sun-Wed 12:00 PM - 02:00 AM, Thu-Sat 12:00 PM - 03:00 AM',
      description:
          'Zuma is an award-winning contemporary Japanese restaurant known for its izakaya-style sharing plates. It offers sushi, robata-grilled dishes, and a stylish urban atmosphere. The venue is also popular for its high-energy lounge and nightlife.',
      reviewSummary: '4.8 (4.1k reviews)',
    ),
    DummyPlace(
      name: 'Il Ristorante – Niko Romito',
      imageUrl: '',
      openingHours: 'Daily: 7:00 PM - 11:00 PM',
      description:
          'Il Ristorante showcases refined Italian fine dining curated by Michelin-starred chef Niko Romito. The menu focuses on purity of ingredients, balanced flavors, and elegant simplicity. Located in the Bulgari Resort, it provides a luxurious seaside dining experience.',
      reviewSummary: '',
    ),
    DummyPlace(
      name: 'Pierchic',
      imageUrl: '',
      openingHours: 'Lunch: 1:00 PM - 2:30 PM; Dinner: Sun-Thu 6:30 PM - 10:00 PM, Fri-Sat 6:30 PM - 10:30 PM',
      description:
          'Pierchic is an over-water restaurant offering romantic dining with panoramic Gulf views. It specializes in premium seafood served in an elegant, serene setting. Its location at the end of a wooden pier makes it one of Dubai\'s most picturesque dining spots.',
      reviewSummary: '4.2 (2.4k reviews)',
    ),
    DummyPlace(
      name: 'Ossiano',
      imageUrl: '',
      openingHours: 'Daily: 6:00 PM - 12:00 AM',
      description:
          'Ossiano is an underwater-themed fine-dining restaurant with floor-to-ceiling views of marine life in the Ambassador Lagoon. It features innovative seafood tasting menus crafted by world-renowned chefs. The immersive ambiance delivers a unique, luxury dining experience.',
      reviewSummary: '4.2 (2.4k reviews)',
    ),
    DummyPlace(
      name: 'Al Hadheerah',
      imageUrl: '',
      openingHours: 'Daily: 7:00 PM - 12:00 AM',
      description:
          'Al Hadheerah is an Arabic desert-themed restaurant at Bab Al Shams, offering traditional cuisine in an open-air setting. Guests enjoy live performances, including music, dance, and heritage shows. It recreates an authentic Bedouin atmosphere enhanced by desert scenery.',
      reviewSummary: '4.5 (2k reviews)',
    ),
    DummyPlace(
      name: 'COYA Dubai',
      imageUrl: '',
      openingHours:
          'Saturday: 12:30 PM - 4:00 PM, 7:00 PM - 12:30 AM ; Sun-Fri 12:30 PM - 3:30 PM, 6:30 PM - 12:30 AM  ',
      description:
          'COYA is a vibrant Peruvian restaurant known for its ceviche bar, grills, and Latin-inspired cocktails. It mixes traditional flavors with contemporary culinary craftsmanship. The lively atmosphere and music make it a top social dining destination.',
      reviewSummary: '4.6 (4k reviews)',
    ),
  ],
  'nightlife': [
    DummyPlace(
      name: 'WHITE Beach Dubai',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 6:30 PM',
      description:
          'WHITE Beach is a stylish beachfront club at Atlantis The Palm offering poolside lounging and DJ performances. It features Mediterranean-inspired design and iconic skyline views. At night, the venue transforms into a lively party destination.',
      reviewSummary: '4.5 (3k reviews)',
    ),
    DummyPlace(
      name: 'Soho Garden DXB',
      imageUrl: '',
      openingHours: 'Wednesday - Sunday 10:00 PM - 04:00 AM',
      description:
          'Soho Garden combines restaurants, lounges, clubs, and outdoor spaces into one nightlife complex. It hosts international DJs and themed parties throughout the week. The venue blends European garden aesthetics with Dubai nightlife energy.',
      reviewSummary: '4.2 (3.5k reviews)',
    ),
    DummyPlace(
      name: 'Billionaire Dubai',
      imageUrl: '',
      openingHours: 'Tuesday - Sunday 9:00 PM - 03:00 AM',
      description:
          'Billionaire is a dinner-show concept that merges fine dining with high-energy performances. The venue transitions into a nightclub later in the evening. It is known for its luxurious atmosphere and theatrical entertainment.',
      reviewSummary: '4.4 (1.7k reviews)',
    ),
    DummyPlace(
      name: 'BLU Dubai',
      imageUrl: '',
      openingHours: 'Tuesday - Sunday 9:00 PM - 03:00 AM',
      description:
          'BLU is a rooftop lounge and nightclub offering panoramic views of Sheikh Zayed Road. It hosts international artists, themed nights, and high-energy music events. Its elevated location makes it a standout late-night venue.',
      reviewSummary: '4 (1.6k reviews)',
    ),
    DummyPlace(
      name: 'Secret Room Dubai',
      imageUrl: '',
      openingHours: 'Wednesday - Saturday 11:00 PM - 04:00 AM',
      description:
          'Secret Room is an exclusive hip-hop-focused nightclub known for its luxury automotive entrance concept. The interior features graffiti-style decor and high-end bottle service. It attracts a trendy crowd and international DJs.',
      reviewSummary: '4.4 (230 reviews)',
    ),
    DummyPlace(
      name: '',
      imageUrl: '',
      openingHours: 'Wednesday - Saturday 11:00 PM - 04:00 AM',
      description: 'Hip-hop focused underground club with customized supercar valet entrance.',
      reviewSummary: '4.4 (230 reviews)',
    ),
  ],
  'beaches_pools': [
    DummyPlace(
      name: 'Kite Beach',
      imageUrl: '',
      openingHours: 'Open 24 hours',
      description:
          'Kite Beach is a popular public beach known for kite-surfing, jogging tracks, and beachfront cafés. It offers clear views of Burj Al Arab. The area is active, family-friendly, and ideal for water sports.',
      reviewSummary: '4.5 (1.9k reviews)',
    ),
    DummyPlace(
      name: 'Marina Beach JBR',
      imageUrl: '',
      openingHours: 'Open 24 hours',
      description:
          'Marina Beach is a lively stretch of sand adjacent to The Walk at JBR. It offers swimming, watersports, restaurants, and a family-friendly vibe. The beachfront is surrounded by high-rise towers and resort facilities.',
      reviewSummary: '4.6 (25k reviews)',
    ),
    DummyPlace(
      name: 'La Mer',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 12:00 AM',
      description:
          'La Mer is a modern beachfront district with boutiques, restaurants, and colorful street art. It offers water play areas, beach clubs, and relaxed urban vibes. Its design blends coastal and contemporary aesthetics.',
      reviewSummary: '4.6 (23k reviews)',
    ),
    DummyPlace(
      name: 'Nikki Beach Dubai',
      imageUrl: '',
      openingHours: 'Tuesday - Sunday 11:00 AM - 7:00 PM',
      description:
          'Nikki Beach is a luxury beach club with white décor, pools, cabanas, and live DJ entertainment. It blends international beach-club culture with Dubai glamour. Guests enjoy Mediterranean-style dining and upscale party atmosphere.',
      reviewSummary: '4.4 (1.8k reviews)',
    ),
    DummyPlace(
      name: 'Atlantis Aquaventure Waterpark',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 6:30 PM',
      description:
          'The private beach at Aquaventure offers pristine white sand and views of the Palm Jumeirah. Access is included with waterpark tickets. It provides a relaxing break between rides and attractions at the park.',
      reviewSummary: '4.6 (37.5k reviews)',
    ),
  ],
  'culture_museums': [
    DummyPlace(
      name: 'Al Fahidi Historical Neighbourhood',
      imageUrl: '',
      openingHours: 'Daily: 07:00 AM - 8:00 PM',
      description:
          'Al Fahidi preserves old Dubai architecture with wind towers, courtyard homes, and narrow pathways. It is home to museums, cultural centers, and traditional cafés. Visitors experience Dubai’s heritage before the modern skyline.',
    ),
    DummyPlace(
      name: 'Etihad Museum',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 8:00 PM',
      description:
          'Etihad Museum chronicles the formation of the United Arab Emirates through interactive exhibits and historic documents. It sits on the site where the UAE constitution was signed in 1971. The museum features sleek modern architecture and detailed storytelling.',
      reviewSummary: '4.6 (3k reviews)',
    ),
    DummyPlace(
      name: 'Al Shindagha Museum',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 8:00 PM',
      description:
          'Al Shindagha Museum showcases Dubai’s maritime history and cultural evolution through immersive displays. It overlooks Dubai Creek, where the city first developed. The museum is part of a restored heritage district.',
      reviewSummary: '4.5 (4.4k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Opera',
      imageUrl: '',
      openingHours: '',
      description:
          'Dubai Opera is the city’s premier performing arts venue hosting musicals, opera, ballet, concerts, and cultural events. Its dhow-shaped building reflects local maritime heritage. The venue is known for exceptional acoustics and high-end architectural design.',
      reviewSummary: '4.7 (9.1k reviews)',
    ),
  ],
  'shopping': [
    DummyPlace(
      name: 'The Dubai Mall',
      imageUrl: '',
      openingHours: 'Mon-Thu: 10:00 AM - 11:00 PM, Fri-Sun: 10:00 AM - 12:00 AM',
      description:
          'The Dubai Mall is one of the largest malls in the world, offering luxury brands, dining, and entertainment attractions. It features the Dubai Aquarium, VR Park, and an indoor skating rink. The mall is a central hub for tourism connected directly to Burj Khalifa.',
      reviewSummary: '4.7 (284k reviews)',
    ),
    DummyPlace(
      name: 'Mall of the Emirates',
      imageUrl: '',
      openingHours: 'Mon-Thu: 10:00 AM - 11:00 PM, Fri-Sun: 10:00 AM - 12:00 AM',
      description:
          'Mall of the Emirates is famous for Ski Dubai, the Middle East’s first indoor ski resort. It offers luxury shopping, gourmet dining, and diverse entertainment options. The mall blends leisure and retail in an upscale environment.',
      reviewSummary: '4.7 (141k reviews)',
    ),
    DummyPlace(
      name: 'City Walk',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 11:00 PM',
      description:
          'City Walk is an outdoor urban lifestyle destination featuring boutiques, cafés, street art, and entertainment venues. It blends European-style boulevards with modern Dubai design. The area is popular for evening strolls and family outings.',
      reviewSummary: '4.6 (36k reviews)',
    ),
    DummyPlace(
      name: 'Souk Madinat Jumeirah',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 11:00 PM',
      description:
          'Souk Madinat is a modern reinterpretation of a traditional Arabian marketplace. It features boutiques, waterfront dining, and picturesque canals with abra boats. The venue offers atmospheric views of Burj Al Arab.',
      reviewSummary: '4.5 (25k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Festival City Mall',
      imageUrl: '',
      openingHours: 'Mon-Thu: 10:00 AM - 10:00 PM, Fri-Sun: 10:00 AM - 12:00 AM',
      description:
          'Dubai Festival City Mall is a waterfront shopping destination known for the IMAGINE laser, fountain, and fire show. It offers a wide selection of retail brands and family attractions. The location along the creek adds scenic value to the experience.',
      reviewSummary: '4.6 (53.7k reviews)',
    ),
    DummyPlace(
      name: 'Platinum Heritage Desert Camp',
      imageUrl: '',
      openingHours: 'Daily: 07:00 AM - 12:00 AM',
      description:
          'Platinum Heritage offers luxury desert safaris in vintage Land Rovers and authentic Bedouin-style camps. Their experiences focus on conservation, culture, and wildlife. It is known as Dubai’s most premium desert tour operator.',
      reviewSummary: '4.8 (1.2k reviews)',
    ),
    DummyPlace(
      name: 'Skyhub Paramotors',
      imageUrl: '',
      openingHours: 'Daily flights: 06:00 AM - 06:00 PM',
      description:
          'Skyhub Paramotors specializes in powered paragliding experiences offering aerial views of the desert and Dubai skyline. They emphasize safety, professional training, and high-quality equipment. The adventure is suitable for both beginners and thrill-seekers.',
      reviewSummary: '4.9 (1.9k reviews)',
    ),
    DummyPlace(
      name: 'Balloon Adventures Dubai',
      imageUrl: '',
      openingHours: 'Daily sunrise flights: 04:00 AM - 09:00 AM',
      description:
          'Balloon Adventures provides sunrise hot air balloon flights over the Dubai desert. Guests enjoy aerial views of dunes, camels, and wildlife. The experience often includes a desert breakfast and falconry displays.',
      reviewSummary: '4.9 (1.9k reviews)',
    ),
  ],
  'family_fun': [
    DummyPlace(
      name: 'Dubai Parks and Resorts',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 10:00 PM',
      description:
          'Dubai Parks and Resorts feels like a full day of excitement wrapped into one destination. Each park has its own world of characters, rides, and cinematic moments that bring families together. It’s the kind of place where both kids and adults end up smiling more than they expected.',
      reviewSummary: '4.5 (7.3k reviews)',
    ),
    DummyPlace(
      name: 'IMG Worlds of Adventure',
      imageUrl: '',
      openingHours: 'Sun-Thu: 12:00 PM - 10:00 PM, Fri-Sat: 12:00 PM - 11:00 PM',
      description:
          'Stepping into IMG Worlds feels like entering a giant indoor universe built just for fun. The themed zones pull you into stories you grew up with, from Marvel heroes to cartoon classics. It’s the perfect escape when you want big thrills without the desert heat.',
      reviewSummary: '4.3 (32.2k reviews)',
    ),
    DummyPlace(
      name: 'The Green Planet',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 6:00 PM',
      description:
          'The Green Planet gives you the rare feeling of stepping into a calm, living rainforest in the heart of the city. Birds fly above you, waterfalls echo softly, and every corner feels alive. It’s an experience that quietly reconnects you with nature.',
      reviewSummary: '4.4 (11.1k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Aquarium & Underwater Zoo',
      imageUrl: '',
      openingHours: 'Mon-Fri: 10:00 AM - 10:15 PM, Sat-Sun: 10:00 AM - 11:15 PM',
      description:
          'Dubai Aquarium makes you feel like you’ve slipped underwater without ever getting wet. Sharks, rays, and thousands of fish glide above and around you as you walk through the tunnel. It’s a moment of pure wonder that every visitor—kids or adults—remembers.',
      reviewSummary: '4.5 (76k reviews)',
    ),
    DummyPlace(
      name: 'Legoland Dubai',
      imageUrl: '',
      openingHours: 'Mon-Fri: 10:00 AM - 06:00 PM, Sat-Sun: 11:00 AM - 7:00 PM',
      description:
          'Legoland Dubai feels like a world built with imagination at every turn. The rides are gentle, colorful, and designed to make younger kids feel brave and excited. It’s one of the easiest places for families to spend a full day without rushing.',
      reviewSummary: '4.4 (19.5k reviews)',
    ),
  ],
};
