import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class CustomNev extends StatelessWidget {
  const CustomNev({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          color: backGroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white),
            child: Row(
              children: [
                ImageIcon(
                  const AssetImage(
                    "assets/icons/hm.png",
                  ),
                  size: 24,
                  color: backGroundColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Home",
                    style: nev,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 6),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white),
            child: ImageIcon(
              const AssetImage(
                "assets/icons/vector.png",
              ),
              size: 24,
              color: backGroundColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 6),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white),
            child: ImageIcon(
              const AssetImage(
                "assets/icons/pie.png",
              ),
              size: 24,
              color: backGroundColor,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 6),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white),
              child: Icon(Icons.person_outline_outlined,color: backGroundColor,size: 30,)
          ),
        ],
      ),
    );
  }
}
