class Task {
  final String currentTime;
  final String remainingTime;
  final String title;
  final String subTitle;
  final String profileImage;
  final String name;
  final String id;
  final String location;
  final String room;

  Task({
    required this.currentTime,
    required this.remainingTime,
    required this.title,
    required this.subTitle,
    required this.profileImage,
    required this.name,
    required this.id,
    required this.location,
    required this.room,
  });
}

List<Task> tasks = [
  Task(
    currentTime: "07:00",
    remainingTime: "1 Hr 45 min",
    title: "Typograph",
    subTitle: "Baics of Typograph",
    profileImage: "",
    name: "Gabriel",
    id: "722-085",
    location: "Faculty of art",
    room: "Room C1",
  ),
  Task(
    currentTime: "10:00",
    remainingTime: "2 Hrs",
    title: "Data Structures",
    subTitle: "Algorithms",
    profileImage: "",
    name: "De-gea",
    id: "254-123",
    location: "COHRED",
    room: "SPA 07",
  ),
  Task(
    currentTime: "01:00",
    remainingTime: "4 Hr",
    title: "Web dev",
    subTitle: "Html and css",
    profileImage: "",
    name: "Muhande",
    id: "456-567",
    location: "Tech House",
    room: "G 005",
  ),
];
