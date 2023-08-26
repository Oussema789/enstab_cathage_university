List<String> generateImageList(
    String basePath, String imageNameFormat, int count) {
  List<String> imageList = [];
  for (int i = 1; i <= count; i++) {
    final imageName = '$imageNameFormat$i.jpg';
    imageList.add('$basePath/$imageName');
  }
  return imageList;
}
