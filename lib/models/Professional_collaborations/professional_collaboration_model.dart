class ProfessionalCollaboration {
  bool internal;
  List<String> partners;
  List<String> forum;

  ProfessionalCollaboration({
    required this.internal,
    required this.partners,
    required this.forum,
  });
}

List<String> generateImageList(
    String basePath, String imageNameFormat, int count) {
  List<String> imageList = [];
  for (int i = 1; i <= count; i++) {
    final imageName = '$imageNameFormat$i.jpg';
    imageList.add('$basePath/$imageName');
  }
  return imageList;
}

List<String> partners =
    generateImageList("assets/partners/internal", "partner_", 36);
