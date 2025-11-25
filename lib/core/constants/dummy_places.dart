class DummyPlace {
  final String? name;
  final String? description;
  final String? imageUrl;
  final String? openingHours;
  final String? location;
  final String? reviewSummary;
  final String? link;

  const DummyPlace({
    this.name,
    this.description,
    this.imageUrl,
    this.openingHours,
    this.location,
    this.reviewSummary,
    this.link,
  });
}

const Map<String, List<DummyPlace>> dummyPlacesByCategory = {
  'must_see': [
    DummyPlace(
      name: 'Burj Khalifa',
      description:
          'The Burj Khalifa is an architectural masterpiece and the tallest building in the world, rising an incredible 828 meters above the heart of Dubai. Its sleek, tapering design draws inspiration from Islamic architecture, while its engineering represents the pinnacle of modern innovation. Visitors can explore its high-speed elevators, world-famous observation decks on levels 124, 125, and 148, and enjoy sweeping views that stretch across the city, the coastline, and the vast desert beyond. Surrounded by the Dubai Fountain and luxury attractions, the Burj Khalifa stands not only as a record-breaking structure but also as a symbol of Dubai’s ambition, creativity, and futuristic vision.',
      imageUrl:
          'https://media.cntraveler.com/photos/6424bdcf94f6ca4a2362319f/4:3/w_7720,h_5790,c_limit/Atlantis%20The%20Royal%20Dubai_cloud22-poolview.jpg',
      openingHours: 'Open 24 hours',
      location: '1 Sheikh Mohammed bin Rashid Boulevard, Downtown',
      reviewSummary: '4.7 (166k reviews)',
    ),
    DummyPlace(
      name: 'Palm Jumeirah',
      description:
          'Palm Jumeirah is an iconic, man-made island shaped like a palm tree, symbolizing Dubai’s creativity and engineering ambition. Built on reclaimed land, it stretches into the Arabian Gulf and is home to luxurious resorts, waterfront villas, and upscale dining and entertainment options. The island features landmarks like Atlantis, The Palm and scenic boardwalks that offer beautiful sea views. With its mix of relaxation, adventure, and world-class hospitality, Palm Jumeirah stands as one of Dubai’s most impressive and recognizable destinations.',
      imageUrl:
          'https://media.cntraveler.com/photos/6424bdcf94f6ca4a2362319f/4:3/w_7720,h_5790,c_limit/Atlantis%20The%20Royal%20Dubai_cloud22-poolview.jpg',
      location: 'Palm Jumeirah, Jumeirah',
    ),
    DummyPlace(
      name: 'The Dubai Fountain',
      imageUrl: '',
      description:
          'The Dubai Fountain is the world’s largest choreographed fountain system, set on the Burj Khalifa Lake in Downtown Dubai. Its powerful water jets shoot up to 140 meters high, moving in harmony with music and vibrant lights to create a captivating, must-see performance. Shows take place daily, transforming the waterfront into a mesmerizing spectacle that reflects beautifully against the backdrop of the Burj Khalifa. Whether viewed from the promenade, nearby restaurants, or an abra boat on the lake, the Dubai Fountain delivers an unforgettable experience.',
      reviewSummary: '4.8 (137k reviews)',
      location: 'Downtown Dubai',
    ),
    DummyPlace(
        name: 'Museum of the Future',
        imageUrl: '',
        openingHours: 'Daily: 09:00 AM - 9:00 PM',
        description:
            'The Museum of the Future is one of Dubai’s most striking landmarks, known for its futuristic torus-shaped design covered in flowing Arabic calligraphy. More than just a museum, it serves as an immersive exploration of future possibilities in technology, sustainability, space, and human innovation. Inside, visitors experience interactive exhibits that blend science, imagination, and cutting-edge design, offering a glimpse into what the world could look like decades from now. The Museum of the Future stands as a symbol of progress and creativity, inspiring visitors to think boldly about tomorrow.',
        reviewSummary: '4.4 (48k reviews)',
        location: '201 Sheikh Zayed Road, Trade Centre 2'),
    DummyPlace(
      name: 'The Dubai Frame',
      imageUrl: '',
      openingHours: 'Daily: 09:00 AM - 9:00 PM',
      description:
          'The Dubai Frame is a striking architectural landmark designed to resemble a giant picture frame, symbolically connecting Dubai’s past and future. Standing 150 meters tall in Zabeel Park, it offers two unique perspectives: one side overlooks the historic districts of Old Dubai, while the other showcases the modern skyline of Downtown. Inside, visitors walk through immersive galleries that highlight the city’s transformation, and the sky deck features a glass-floored bridge with panoramic views. The Dubai Frame beautifully captures the story of Dubai’s evolution in a single, iconic structure.',
      reviewSummary: '4.6 (70k reviews)',
      location: 'Zabeel Park Jogging Track, Za’abeel – Al Kifaf',
    ),
    DummyPlace(
      name: 'Dubai Miracle Garden',
      imageUrl: '',
      openingHours: 'Daily: 09:00 AM - 11:00 PM',
      description:
          'Dubai Miracle Garden is the world’s largest natural flower garden, showcasing over 150 million blooming flowers arranged in breathtaking shapes and vibrant patterns. Open seasonally, it features life-size floral sculptures, heart-shaped pathways, and record-breaking displays like the Emirates A380 covered entirely in flowers. The garden combines artistic creativity with natural beauty, offering a colorful, immersive escape perfect for photos, leisurely strolls, and family visits. It stands as one of Dubai’s most enchanting outdoor attractions.',
      location: 'Al Barsha South 3',
      reviewSummary: '4.6 (90k reviews)',
    ),
    DummyPlace(
      name: 'Dubai Aquarium & Underwater Zoo',
      imageUrl: '',
      openingHours: 'Mon-Fri: 10:00 AM - 10:15 PM, Sat-Sun: 10:00 AM - 11:15 PM',
      description:
          'Dubai Aquarium & Underwater Zoo is one of the city’s most captivating attractions, located inside The Dubai Mall. It features one of the world’s largest suspended aquariums, home to thousands of marine animals including sharks, rays, and vibrant fish species. Visitors can walk through the 48-meter tunnel for an immersive underwater experience or explore the Underwater Zoo above, which showcases unique creatures like otters, crocodiles, penguins, and jellyfish. With interactive exhibits and thrilling experiences such as cage snorkeling and shark dives, the Dubai Aquarium & Underwater Zoo offers a fascinating journey into the marine world for all ages.',
      reviewSummary: '4.5 (76k reviews)',
      location: '1 Mohammed Bin Rashid Boulevard, Level 2 (Dubai Mall)',
    ),
    DummyPlace(
      name: 'Al Fahidi Historical Neighbourhood',
      imageUrl: '',
      // openingHours: 'Daily: 07:00 AM - 8:00 PM',
      description:
          'Al Fahidi Historical Neighbourhood, also known as Al Bastakiya, is one of Dubai’s oldest and most culturally rich districts. Its narrow alleyways, traditional wind-tower houses, and beautifully restored courtyards offer a glimpse into life in Dubai before the modern skyscrapers. The area is filled with art galleries, museums, cafés, and cultural centers like the Sheikh Mohammed Centre for Cultural Understanding, making it a peaceful and authentic place to explore. Walking through Al Fahidi feels like stepping back in time, showcasing the emirate’s heritage, craftsmanship, and enduring traditions.',
      location: 'Al Souq Al Kabeer, Al Fahidi',
      reviewSummary: '4.6 (16 reviews)',
    ),
    DummyPlace(
      name: 'Dubai Mall',
      imageUrl: '',
      openingHours: 'Mon-Thu 10:00 AM - 11:00 PM, Fri-Sun 10:00 AM - 12:00 AM',
      description:
          'Dubai Mall is one of the world’s largest shopping and entertainment destinations, home to more than 1,200 stores. It also houses major attractions like Dubai Aquarium, VR Park, and an Olympic-sized ice rink. Located next to Burj Khalifa, it attracts millions of visitors each year.',
      reviewSummary: '4.7 (283k reviews)',
      location: 'Downtown, Sheikh Mohammed bin Rashid Boulevard',
    ),
  ],
  'restaurants': [
    DummyPlace(
      name: 'Trèsind Studio',
      imageUrl: '',
      openingHours: 'Daily: 6:00 PM - 12 AM',
      description:
          'Trèsind Studio is an award-winning fine-dining restaurant in Dubai, renowned for its intimate setting and innovative approach to modern Indian cuisine. Led by acclaimed chefs, it offers a multi-course tasting menu that blends traditional flavors with bold, contemporary techniques, creating a culinary journey that feels both artistic and deeply personal. With only a limited number of seats, the experience is highly immersive, allowing guests to engage with the chefs and enjoy beautifully plated dishes that highlight creativity, storytelling, and exceptional craftsmanship. Trèsind Studio stands among Dubai’s most prestigious gastronomic destinations.',
      reviewSummary: '4.7 (2.7k reviews)',
      location: 'St. Regis Gardens The Palm',
    ),
    DummyPlace(
      name: 'FZN by Björn Frantzén',
      imageUrl: '',
      openingHours: 'Tuesday-Saturday 7:00 PM - 01:00 AM',
      description:
          'FZN by Björn Frantzén is a high-end dining experience in Dubai inspired by the culinary vision of acclaimed Swedish chef Björn Frantzén. Known for blending Nordic techniques with global influences, the restaurant offers an elegant, contemporary tasting menu that highlights precision, seasonal ingredients, and bold yet balanced flavors. The ambiance is refined and immersive, with meticulous attention to detail in both presentation and service. FZN delivers a sophisticated gastronomic journey that reflects Frantzén’s signature style—innovative, expressive, and rooted in world-class culinary craft.',
      reviewSummary: '4.7 (50 reviews)',
      location: 'Atlantis The Palm, Crescent Road, The Palm Jumeirah',
    ),
    DummyPlace(
      name: 'Zuma',
      imageUrl: '',
      openingHours: 'Sun-Wed 12:00 PM - 02:00 AM, Thu-Sat 12:00 PM - 03:00 AM',
      description:
          'Zuma Dubai is a globally acclaimed contemporary Japanese restaurant offering a stylish, high-energy dining experience in the heart of DIFC. Known for its izakaya-style sharing dishes, the menu features signature items like miso-marinated black cod, premium sushi, robata-grilled meats, and inventive small plates. The atmosphere blends modern luxury with a lively social vibe, making it a favorite for both business dinners and nights out. With exceptional service, sophisticated design, and consistently high culinary standards, Zuma remains one of Dubai’s most iconic dining destinations.',
      reviewSummary: '4.4 (4.1k reviews)',
      location: 'Gate Village, Building 4, Dubai International Financial Centre',
    ),
    DummyPlace(
      name: 'Il Ristorante – Niko Romito',
      imageUrl: '',
      openingHours: 'Daily: 7:00 PM - 11:00 PM',
      description:
          'Il Ristorante – Niko Romito is a refined Italian dining experience located at Bulgari Resort Dubai, crafted by the celebrated Michelin-starred chef Niko Romito. The restaurant showcases a minimalist yet sophisticated approach to Italian cuisine, focusing on purity of flavor, precise techniques, and exceptional ingredients sourced from Italy. Its elegant interiors, serene marina views, and warm hospitality create a luxurious atmosphere. With beautifully balanced dishes that honor Italian tradition while embracing modern creativity, Il Ristorante offers one of Dubai’s most exquisite and memorable fine-dining journeys.',
      reviewSummary: '4 (275 reviews)',
      location: 'Bvlgari Resort, Jumeirah Bay Island',
    ),
    DummyPlace(
        name: 'Ossiano',
        imageUrl: '',
        openingHours: 'Daily: 6:00 PM - 12:00 AM',
        description:
            'Ossiano Dubai is an extraordinary underwater dining experience located in Atlantis, The Palm, offering a Michelin-starred journey inspired by the ocean. Set beside the magnificent Ambassador Lagoon, the restaurant surrounds guests with floor-to-ceiling views of marine life, creating a serene and immersive atmosphere. Led by acclaimed chefs, Ossiano presents an imaginative tasting menu that blends refined techniques with ocean-inspired flavors, telling a story through each beautifully crafted course. With its dramatic setting, exceptional service, and avant-garde cuisine, Ossiano stands as one of Dubai’s most unique and unforgettable fine-dining destinations.',
        reviewSummary: '4.5 (1.3k reviews)',
        location: 'Atlantis The Palm, Crescent Road, The Palm Jumeirah'),
    DummyPlace(
      name: 'Moonrise',
      imageUrl: '',
      openingHours: 'Daily: 6:00 PM - 12:00 AM',
      description:
          'Moonrise is an intimate, chef-driven dining experience in Dubai known for its modern, Middle Eastern–inspired tasting menu. Set on a rooftop with an open-kitchen counter, it allows guests to watch the chefs prepare each course with precision and creativity. Led by Chef Solemann Haddad, Moonrise blends local flavors with international techniques, resulting in dishes that are imaginative yet deeply rooted in regional culture. With limited seating, a minimalist setting, and a focus on storytelling through food, Moonrise offers a unique and personal gastronomic journey unlike anywhere else in the city.',
      reviewSummary: '4.8 (300 reviews)',
      location: 'Eden House, Al Satwa',
    ),
    DummyPlace(
      name: 'CÉ LA VI',
      imageUrl: '',
      openingHours: 'Daily: 12:00 AM - 3:00 AM',
      description:
          'CÉ LA VI Dubai is a stylish rooftop dining and entertainment destination located atop Address Sky View, offering breathtaking views of the Burj Khalifa and the city skyline. Known for its modern Asian cuisine, the restaurant serves beautifully crafted dishes that blend bold flavors with elegant presentation. The venue features a chic indoor dining area, a lively lounge, and an outdoor terrace perfect for sunset cocktails and photo-worthy moments. With its vibrant atmosphere, refined dishes, and iconic infinity-pool backdrop, CÉ LA VI delivers a memorable, upscale Dubai experience.',
      reviewSummary: '4.5 (7.2k reviews)',
      location: 'Address Sky View Towers, Sheikh Mohammed bin Rashid Boulevard',
    ),
    DummyPlace(
      name: 'OCCO Restaurant Dubai',
      imageUrl: '',
      openingHours: 'Daily: 10:00 AM - 4:00 AM',
      description:
          'OCCO Restaurant Dubai is an elegant dining destination offering a modern interpretation of classic Mediterranean and Levantine cuisine. With its chic, dimly lit interiors and stylish ambience, the restaurant blends contemporary luxury with warm, inviting character. The menu features a refined selection of mezze, grilled specialties, and fresh, flavorful dishes crafted with high-quality ingredients. Known for its smooth service, sophisticated atmosphere, and vibrant evening energy, OCCO provides a memorable dining experience perfect for both intimate dinners and lively gatherings.',
      reviewSummary: '4.8 (1.6k reviews)',
      location: 'Hessa St - Al Barsha',
    ),
  ],
  'nightlife': [
    DummyPlace(
        name: 'O Dubai - Lounge & Club',
        imageUrl: '',
        openingHours: 'Daily: 8:00 PM - 4:00 AM',
        description:
            'O Dubai – Lounge & Club is a stylish nightlife spot combining upscale dining with high-energy club vibes. Known for its stunning city views, vibrant music, and luxurious atmosphere, it’s a go-to destination for premium cocktails, live entertainment, and late-night parties.',
        reviewSummary: '4.8 (5.2k reviews)',
        location: 'Nassima Tower Hotel Apartments | Sheikh Zayed Road'),
    DummyPlace(
      name: 'Soho Garden DXB',
      imageUrl: '',
      openingHours: 'Wednesday - Sunday 10:00 PM - 04:00 AM',
      description:
          'Soho Garden combines restaurants, lounges, clubs, and outdoor spaces into one nightlife complex. It hosts international DJs and themed parties throughout the week. The venue blends European garden aesthetics with Dubai nightlife energy.',
      reviewSummary: '4.2 (3.5k reviews)',
      location: 'Racecourse, Grand Stand - Al Meydan Rd - Nad Al Sheba 1',
    ),
    DummyPlace(
      name: 'BLU Dubai',
      imageUrl: '',
      openingHours: 'Daily: 10:00 PM - 4:00 AM',
      description:
          'BLU is a rooftop lounge and nightclub offering panoramic views of Sheikh Zayed Road. It hosts international artists, themed nights, and high-energy music events. Its elevated location makes it a standout late-night venue.',
      reviewSummary: '4 (1.6k reviews)',
      location: 'V Hotel Dubai, Al Habtoor City - 260 Sheikh Zayed Rd - Business Bay',
    ),
    DummyPlace(
      name: 'Secret Room Dubai',
      imageUrl: '',
      openingHours: 'Wednesday - Saturday 11:00 PM - 04:00 AM',
      description:
          'Secret Room is an exclusive hip-hop-focused nightclub known for its luxury automotive entrance concept. The interior features graffiti-style decor and high-end bottle service. It attracts a trendy crowd and international DJs.',
      reviewSummary: '4.4 (230 reviews)',
      location: 'Downtown Dubai',
    ),
    DummyPlace(
      name: 'The Penthouse Dubai',
      imageUrl: '',
      openingHours: 'Daily: 5:00 PM - 4:00 AM',
      description:
          'The Penthouse Dubai – Rooftop Lounge & Nightclub at FIVE Palm Jumeirah offers a glamorous rooftop experience with panoramic skyline views. Known for its stylish décor, lively nightlife, and deep-house music, it blends upscale dining, signature cocktails, and vibrant parties in a chic, adults-only setting.',
      reviewSummary: '4.5 (3.4k reviews)',
      location: 'No 1 Palm Jumeirah',
    ),
  ],
  'beaches_pools': [
    DummyPlace(
        name: 'Barasti Beach',
        imageUrl: '',
        openingHours: 'Daily: 9:00 AM - 3:00 PM',
        description:
            'Barasti Beach is a lively beach bar known for its relaxed tropical vibe, beachfront views, and upbeat atmosphere. Offering great music, casual dining, and day-to-night entertainment, it’s a popular spot for sunbathing, sports screenings, and energetic weekend parties right on the sand.',
        reviewSummary: '4.3 (15k reviews)',
        location: 'Le Meridien Mina Syahi Beach Resort & Marina'),
    DummyPlace(
        name: 'Nikki Beach Dubai',
        imageUrl: '',
        openingHours: 'Tuesday - Sunday 11:00 AM - 7:00 PM',
        description:
            'Nikki Beach Dubai – Beach Club & Restaurant delivers a chic, contemporary beachfront experience with signature white décor, live music, and a stylish crowd. Known for its luxury cabanas, gourmet cuisine, and upbeat poolside parties, it offers a perfect blend of relaxation and vibrant beachside entertainment.',
        reviewSummary: '4.4 (1.8k reviews)',
        location: 'Nikki Beach Dubai, Pearl - Jumeirah'),
    DummyPlace(
      name: 'Beach by FIVE | FIVE Palm Jumeirah',
      imageUrl: '',
      openingHours: 'Daily 9:00 AM - 2:00 PM',
      description:
          'Beach by FIVE – FIVE Palm Jumeirah Dubai is a vibrant beach club offering a blend of luxury lounging and energetic party vibes. With its private beach, stylish sunbeds, gourmet bites, and live DJ sets, it’s known for hosting some of the city’s most lively daytime and sunset events in a glamorous beachfront setting.',
      reviewSummary: '4.8 (2.2k reviews)',
      location: 'No 1 Palm Jumeirah',
    ),
    DummyPlace(
      name: 'February 30',
      imageUrl: '',
      openingHours: 'Monday–Thursday 12:00–02:00, Friday–Saturday 10:00–03:00, Sunday 10:00–02:00',
      description:
          'February 30 Dubai is a trendy beach bar and restaurant on Palm West Beach, known for its vibrant red-and-black décor, upbeat music, and stylish seaside atmosphere. Offering creative cocktails, international dishes, and a lively day-to-night vibe, it’s a popular spot for beachfront dining and social lounging.',
      reviewSummary: '4.6 (4.4k reviews)',
      location: 'West beach Palm - Jumeirah',
    ),
    DummyPlace(
      name: 'Bla Bla Dubai',
      imageUrl: '',
      openingHours: 'Monday–Thursday 12:00–02:00, Friday–Saturday 10:00–03:00, Sunday 10:00–02:00',
      description:
          'Bla Bla Dubai is a dynamic beachside venue on JBR featuring multiple bars, lounges, and dining concepts all in one place. Known for its lively atmosphere, beachfront views, and diverse entertainment, it offers everything from casual daytime chilling to vibrant nightlife with DJ sets and rooftop vibes.',
      reviewSummary: '4.3 (7.5k reviews)',
      location: 'The Beach, JBR - 5101 Messer Street - Marsa Dubai - Jumeirah Beach Residence',
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
      name: 'Legoland Dubai',
      imageUrl: '',
      openingHours: 'Mon-Fri: 10:00 AM - 06:00 PM, Sat-Sun: 11:00 AM - 7:00 PM',
      description:
          'Legoland Dubai feels like a world built with imagination at every turn. The rides are gentle, colorful, and designed to make younger kids feel brave and excited. It’s one of the easiest places for families to spend a full day without rushing.',
      reviewSummary: '4.4 (19.5k reviews)',
    ),
  ],
};
