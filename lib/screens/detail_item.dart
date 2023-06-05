import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/widgets/custom_details.dart';
import 'package:smart_house/widgets/custom_schedule.dart';
import 'package:smart_house/widgets/detail_first_section.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //First Section..
            const DetailsFirstSection(),
            
            //Second Section..
            Container(
              color: backGroundColor,
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(56),
                    ),
                    color: cardColor),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDetails(count: " 3 ", title: "Schedule "),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(padding: const EdgeInsets.all(6),
                              child: Icon(Icons.add,
                                size: 20,
                                color: backGroundColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const CustomSchedule(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
