import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Center(
          child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/Die-Image-1.png",
                width: 20,
              ),
              Image.asset(
                "assets/images/Die-Image-2.png",
                width: 20,
              ),
              Image.asset(
                "assets/images/Die-Image-3.png",
                width: 20,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/Die-Image-4.png",
                width: 20,
              ),
              Image.asset(
                "assets/images/Die-Image-5.png",
                width: 20,
              ),
              Image.asset(
                "assets/images/Die-Image-6.png",
                width: 20,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/Die-Image-5.png",
                    width: 200,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Roll the Die")
                  )
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
