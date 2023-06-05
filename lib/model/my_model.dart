class Schedule{
  String title, name, date, image;

  Schedule({
    required this.title,
    required this.image,
    required this.name,
    required this.date
});
}

List<Schedule> myList = [
  Schedule(title: "Smart Lamp", image: "assets/images/on.png", name: "Dining Room", date: "Tue Thu"),
  Schedule(title: "Smart Lamp", image: "assets/images/on.png", name: "Dining Room", date: "Tue Thu"),
  Schedule(title: "Smart Lamp", image: "assets/images/on.png", name: "Dining Room", date: "Tue Thu"),
];
