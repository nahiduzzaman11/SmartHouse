class Schedule {
  String title, name, date, image;

  Schedule(
      {required this.title,
      required this.image,
      required this.name,
      required this.date});
}

List<Schedule> myList = [
  Schedule(
      title: "Smart Lamp",
      image: "assets/images/on.png",
      name: "Dining Room",
      date: "Tue Thu"),
  Schedule(
      title: "Smart Lamp",
      image: "assets/images/on.png",
      name: "Dining Room",
      date: "Tue Thu"),
  Schedule(
      title: "Smart Lamp",
      image: "assets/images/on.png",
      name: "Dining Room",
      date: "Tue Thu"),
];

class PowerUsed {
  String title, details, unit1, unit2,icon,image;
  double number, count;
  String percent;
  PowerUsed(this.title, this.details, this.unit1, this.unit2, this.image, this.count, this.number, this.icon,this.percent);
}
List<PowerUsed> powerList =[
  PowerUsed("Lamp", "Kitchen - Bedroom", "8 Unit", "12 Jam", "assets/images/lamp3.png", 1000, -11.2, "assets/images/down.png"," kw/h"),
  PowerUsed("Air Conditioner", "Kitchen - Living Room", "8 Unit", "12 Jam", "assets/images/air.png", 1000, -10.2, "assets/images/up.png"," kw/h"),
  PowerUsed("Wireless Speaker", "Bedroom", "2 Unit", "3 Jam", "assets/images/speaker.png", 1090, -10.2, "assets/images/up.png"," kw/h"),
  PowerUsed("Television", "Living Room", "1 Unit", "12 Jam", "assets/images/television.png", 1000, -100.2, "assets/images/down.png"," kw/h"),
  PowerUsed("Wifi", "Kitchen - Bedroom", "2 Unit", "22 Jam", "assets/images/wifi.png", 22, -20.2, "assets/images/down.png"," kb/s"),
];