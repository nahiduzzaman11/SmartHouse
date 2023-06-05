import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/screens/detail_item.dart';
import 'package:smart_house/widgets/custom_active_card.dart';
import 'package:smart_house/widgets/custom_details.dart';
import 'package:smart_house/widgets/custom_nev.dart';
import 'package:smart_house/widgets/custom_room_card.dart';
import 'package:smart_house/widgets/home_first_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          //First Section....
              const HomeFirstSection(),
          //Second Section....
          Container(
              color: backGroundColor,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(56),
                      ),
                      color: Colors.white),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rooms", style: cardTextStyle1),
                          Text("See All", style: seeAll)
                        ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      CustomRoom(
                          image: "assets/images/living_room.png",
                          text: "devices",
                          title: "Living Room",
                          count: "5",
                          top: 10,
                          temp: "19°"),
                      const SizedBox(width: 12),
                      CustomRoom(
                          image: "assets/images/bedroom.png",
                          text: "devices",
                          title: "Bedroom",
                          count: "8",
                          top: 25,
                          temp: "12°")
                    ]),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDetails(count: " 6 ", title: "Active "),
                          Text("See All", style: seeAll)
                        ]),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        CustomActive(
                            image: "assets/images/ac.png",
                            count: "19°",
                            title: "AC",
                            temp: "Temprature",
                            name: "Living room",
                            c: "C"),
                        const SizedBox(
                          width: 12,
                        ),
                        CustomActive(
                          image: "assets/images/lamp.png",
                          count: "White",
                          title: "Lamp",
                          temp: "Colour",
                          name: "Dining room",
                          c: "",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DetailItem(),
                            ));
                          },
                        ),
                      ],
                    )
                  ]))),
        ])),
        bottomNavigationBar: const CustomNev());
  }
}
