import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/model/my_model.dart';
import 'package:smart_house/widgets/custom_details.dart';

class Usage extends StatelessWidget {
  const Usage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: decoration,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Power Usage",
                        style: titleText,
                      ),
                      Image.asset(
                        "assets/images/settings.png",
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Usage this Week",
                        style: titleColorWhite,
                      ),
                      Row(
                        children: [
                          Text(
                            "2500 ",
                            style: midText,
                          ),
                          Text(
                            "watt",
                            style: text,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: backGroundColor,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: decoration1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDetails(count: " ${powerList.length} ", title: "Total Today "),
                        Text("See All   ", style: seeAll),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: powerList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 1,
                          color: cardColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(powerList[index].image,height: 56,width: 56,),
                                    const SizedBox(width: 16),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(powerList[index].title,style: titleColorDark,),
                                        Text(powerList[index].details,style: cardTextStyle,),
                                        Row(
                                          children: [
                                            Text(powerList[index].unit1,style: textLightDark,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4),
                                              child: Text("|",style: textLightDark,),
                                            ),
                                            Text(powerList[index].unit2,style: textLightDark,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),


                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text(powerList[index].count.toString(),style: textBackColorBold,),
                                        Text(powerList[index].percent,style: textBackColorLite,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(powerList[index].icon,height: 20,width: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2),
                                          child: Text
                                            ("${powerList[index].number}%",style: textLightGreen),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
