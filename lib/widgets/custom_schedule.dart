import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/model/my_model.dart';
import 'package:smart_house/widgets/custom_image.dart';

class CustomSchedule extends StatelessWidget {
  const CustomSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 112,
          width: double.infinity,
          child: Card(
            elevation: 1,
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 0),
              child: Stack(
                children: [
                  //Start Lamp Text ....
                  Positioned(
                    top: 0,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(myList[index].title,
                            style: titleColor),
                        Row(children: [
                          Text(myList[index].name,
                              style: cardTextStyle),
                          Padding(
                              padding:
                              const EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: Text("|",
                                  style: TextStyle(
                                      color: darkColor,
                                      fontSize: 12))),
                          Text(myList[index].date,
                              style: cardTextStyle)
                        ]),
                      ],
                    ),
                  ),

                  //Lite and time section...
                  Positioned(
                      left: 0,
                      bottom: 10,
                      child: Row(children: [
                        Image.asset("assets/images/lamp2.png",
                            height: 40, width: 40),
                        const SizedBox(width: 16),
                        Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text("from",
                                  style: cardTextStyle),
                              Text("8 pm", style: titleColor)
                            ])
                      ])),

                  //On Image button...
                  CustomImage(
                    image: "assets/images/on.png",
                    height: 24,
                    width: 55,
                    right: 0,
                    top: 0,
                  ),

                  //Center Divider...
                  Positioned(
                      top: 0,
                      bottom: 8,
                      left: 0,
                      right: 0,
                      child: VerticalDivider(
                          thickness: 0.3,
                          endIndent: 0,
                          indent: 40,
                          color: darkColor)),

                  //Fight text and delete edit button
                  Positioned(
                      bottom: 10,
                      right: 0,
                      child: Row(
                          children: [
                            Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                children: [
                                  Text("to", style: cardTextStyle),
                                  Text("8 am",style: titleColor)]
                            ),
                            const SizedBox(width: 33,),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/delete.png",
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  "assets/images/edit.png",
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            )])),

                  //Right Divider
                  Positioned(
                      bottom: 8,
                      right: 35,
                      top: 0,
                      child: VerticalDivider(
                          width: 10,
                          thickness: 0.1,
                          endIndent: 0,
                          indent: 40,
                          color: darkColor)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
