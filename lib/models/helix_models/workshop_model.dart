class Workshop {
  final String title;
  final String description;
  final List<String> imageList;

  Workshop(this.title, this.description, this.imageList);
}

List<String> generateImageList(String folder, int count, String prefix) {
  return List.generate(count, (index) {
    final imageName = '$prefix${index + 1}.jpg';
    return 'assets/associations/$folder/$imageName';
  });
}

List<Workshop> workshops = [
  Workshop(
    "Workshop CATIA | ELECTRONIX",
    "Delve into the world of advanced design and modeling with Electronix Catia workshop. Learn to create intricate 3D models, simulate real-world interactions, and design complex mechanical components. Master the software used by engineers and designers worldwide for innovation and precision in product development.",
    generateImageList('electronix/workshops/workshop_catia', 10, 'electronix_'),
  ),
  Workshop(
    "Workshop Autonome | ELECTRONIX",
    '''Experience the future of robotics through our Autonomous Robots workshop. Discover the principles of artificial intelligence, machine learning, and sensor integration that enable robots to make decisions and navigate their environments independently. Engage in creating and programming robots capable of performing tasks with minimal human intervention.''',
    generateImageList('electronix/workshops/autonome', 5, 'electronix_'),
  ),
  Workshop(
    "Workshop Photoshop | ELECTRONIX",
    "Unleash your creativity in Electronix Photoshop workshop. From basic photo editing to advanced graphic design, discover the tools and techniques to manipulate images, create stunning visuals, and enhance your digital artwork. Whether you're a beginner or looking to refine your skills, this workshop will empower you with the art of digital imagery.",
    generateImageList(
        'electronix/workshops/workshop_photoshop', 6, 'electronix_'),
  ),
  Workshop(
    "Workshop Robotic initiation | ELECTRONIX",
    '''Dive into the fundamentals of robotics with their Initialization workshop. Explore the basics of robot components, sensors, and actuators, and learn how to set up and calibrate robotic systems effectively. Get hands-on experience in preparing robots for various tasks and gain insight into the crucial first steps of any robotics project.''',
    generateImageList(
        'electronix/workshops/robotic_initiation', 6, 'electronix_'),
  ),
  Workshop(
    "Workshop IOT & Raspberry | NATEG",
    '''"Nateg Enstab" proudly organized an enlightening IoT workshop centered around Raspberry Pi. This engaging event delved into the realm of Internet of Things (IoT), where participants gained hands-on experience with Raspberry Pi, a versatile microcomputer. Attendees learned to harness its potential to connect the physical world with digital systems, creating innovative projects that bridge the gap between hardware and software. Through interactive sessions, Nateg Enstab facilitated exploration of sensors, data transmission, and remote control, empowering participants to craft their IoT solutions using the powerful Raspberry Pi platform. This workshop empowered attendees to grasp the transformative capabilities of IoT technology in today's interconnected world.''',
    generateImageList('nateg/workshops', 7, 'nateg_'),
  ),
  Workshop(
    "Machine Learning | GDSC ENSTAB",
    '''"GDSC ENSTAB" has orchestrated enlightening workshops focused on the dynamic domains of Artificial Intelligence (AI) and Machine Learning (ML). In these engaging sessions, participants embarked on a journey to unravel the intricacies of AI and ML technologies. From understanding the foundational concepts to exploring real-world applications, attendees were equipped with the knowledge to develop intelligent systems that can learn and adapt. Through hands-on exercises and interactive discussions, participants delved into the algorithms, tools, and techniques that power AI and ML, gaining practical skills to create predictive models, natural language processing applications, and more. GDSC ENSTAB's workshops paved the way for attendees to embrace the forefront of technological innovation and contribute to the transformative landscape of AI and ML.''',
    generateImageList('gdsc', 5, 'gdsc'),
  ),
];
