import '../../widgets/Generate_Image_List.dart';

class EnstabGuests {
  final String name;
  final String position;
  String image;

  EnstabGuests({
    required this.name,
    required this.position,
    required this.image,
  });
}

List<EnstabGuests> createGuestsList(List<String> guestsInfo, int number) {
  List<EnstabGuests> guestsList = guestsInfo.map((info) {
    List<String> parts = info.split(":");
    String name = parts[0].trim();
    String position = parts[1].trim();
    return EnstabGuests(name: name, position: position, image: "");
  }).toList();

  List<String> guestsImages = generateImageList(
    "assets/associations/etc/events/${number} annuel/guest_imgs",
    "guest_",
    guestsList.length,
  );

  for (int i = 0; i < guestsList.length; i++) {
    guestsList[i].image = guestsImages[i];
  }

  return guestsList;
}

List<String> forum5GuestsInfo = [
  "Mr. Imed Hanana : CIO SCET-TUNISIE",
  "Mr. Kamel Besbes : Professor at the Center for Research \nin Microelectronics and Nanotechnologies (CRMN)",
  "Mr. Salem Abdessalem: Doctor in cardiology and the president of the Tunisian Society of Cardiology and Cardiovascular Surgery (STCCCV).",
  "Mr. Ali Madouri: Research engineer at the National Center for Scientific Research (CNRS)"
];

List<String> forum4GuestsInfo = [
  "Shimizu Shinsuke: Ambassador of Japan in Tunisia",
  "M Taieb HADHRI :  Ex Tunisian Minister of Scientific Research, Technology, and Expertise Development",
  "Kais Mejri: Director General of Innovation and Technology Development at the Ministry of Industry, Energy and Mines in Tunisia",
  "M. Salah Hannachi: Ex Ambassador of Tunisia in Japan and Australia",
  "M. Iyadh houimli : Expert technique GIZ",
  "Zakaria Hamad : Ex Minister of Industry"
];

List<EnstabGuests> forum4GuestsList = createGuestsList(forum4GuestsInfo, 4);
List<EnstabGuests> forum5GuestsList = createGuestsList(forum5GuestsInfo, 5);

class Forum {
  final String name;

  final String description;
  final List<String> images;
  final List<String> imagesEntreprises;
  final List<String> imagesEntreprisesLogos;
  final List<String> imagesOfGuests;
  final String image;
  final List<EnstabGuests> guests;

  Forum({
    required this.name,
    required this.description,
    this.images = const [],
    required this.imagesEntreprises,
    required this.imagesEntreprisesLogos,
    required this.imagesOfGuests,
    required this.image,
    required this.guests,
  });
}

List<String> forum4 = generateImageList(
  "assets/associations/etc/events/4 annuel",
  "etc_forum",
  10,
);
List<String> forum4Entreprises = generateImageList(
  "assets/associations/etc/events/4 annuel/entreprises",
  "etc_forum",
  12,
);

List<String> forum4EntreprisesLogos = generateImageList(
  "assets/associations/etc/events/4 annuel/entreprises/logos",
  "etc_forum",
  9,
);

List<String> forum4Guests = generateImageList(
  "assets/associations/etc/events/4 annuel/guests",
  "etc_forum",
  10,
);
/*
List<String> forum4GuestsListe = generateImageList(
  "assets/associations/etc/events/4 annuel/guest_imgs",
  "guest_",
  6,
);
*/
List<String> forum5 = generateImageList(
  "assets/associations/etc/events/5 annuel",
  "etc_forum",
  15,
);

List<String> forum5Entreprises = generateImageList(
  "assets/associations/etc/events/5 annuel/entreprises",
  "etc_forum",
  9,
);

List<String> forum5EntreprisesLogos = generateImageList(
  "assets/associations/etc/events/5 annuel/entreprises/logos",
  "etc_forum",
  7,
);

List<String> forum5Guests = generateImageList(
  "assets/associations/etc/events/5 annuel/guests",
  "etc_forum",
  5,
);
/*
List<String> forum5GuestsListe = generateImageList(
  "assets/associations/etc/events/5 annuel/guest_imgs",
  "guest_",
  4,
);
*/
List<Forum> etcForum = [
  Forum(
    name: "Forum 4",
    description:
        '''The National School of Advanced Sciences and Technologies in Borj Cédria (ENSTABC), in collaboration with ETC Junior Enterprise (Energetic Technologies Consulting), organized a prestigious business forum that included an exhibition and networking area, workshops, and a panel discussion.

In this context, they are delighted to extend an invitation to students from all over the country, representing various schools, to visit our institution and participate in the panel discussion titled "When Digital Technology Embraces Sustainability for a Responsible and Lasting Transformation." 

The event aims to explore the intriguing intersection of digital innovation and environmental consciousness, underscoring the transition towards sustainable and responsible practices. Students have a unique opportunity to engage with industry leaders, experts, and fellow attendees, thereby fostering valuable connections and gaining insightful perspectives.''',
    images: forum4,
    imagesEntreprises: forum4Entreprises,
    imagesEntreprisesLogos: forum4EntreprisesLogos,
    imagesOfGuests: forum4Guests,
    image: "assets/associations/etc/events/4 annuel/etc_forum1.jpg",
    guests: forum4GuestsList,
  ),
  Forum(
    name: "Forum 5",
    description:
        '''This edition focuses on the convergence of Health and Technology, two of the most pivotal aspects of our modern era. Imagine the possibilities when these two fields unite!

During the forum, ETC has spotlighted the remarkable applications of Nanotechnology in the realm of Healthcare, delving deeply into the potential of both domains. Alongside these insightful discussions, attendees can look forward to a range of engaging activities, including a job fair and a variety of workshops.

This event offers an exceptional opportunity to expand student's professional network and enhance the value of their career.''',
    images: forum5,
    imagesEntreprises: forum5Entreprises,
    imagesEntreprisesLogos: forum5EntreprisesLogos,
    imagesOfGuests: forum5Guests,
    image: "assets/associations/etc/events/5 annuel/etc_forum1.jpg",
    guests: forum5GuestsList,
  )
];
