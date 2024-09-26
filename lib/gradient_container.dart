import 'package:flutter/material.dart';
import 'package:rolling_die/dice_roller.dart';


class GradientContainer extends StatelessWidget {
  
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.redorange({super.key})
    : color1 = Colors.red,
      color2 = Colors.orange; 

  final Color color1;
  final Color color2;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                   "assets/images/Die-Image-1.png",
                    width: 40,
                  ),
                  Image.asset(
                   "assets/images/Die-Image-2.png",
                   width: 40,
                  ),
                  Image.asset(
                    "assets/images/Die-Image-3.png",
                   width: 40,
                 ),
                ],
              ),
             Row(
              mainAxisSize: MainAxisSize.min,
               children: [
                  Image.asset(
                    "assets/images/Die-Image-4.png",
                     width: 40,
                 ),
                  Image.asset(
                  "assets/images/Die-Image-5.png",
                  width: 40,
                ),
                Image.asset(
                  "assets/images/Die-Image-6.png",
                  width: 40,
                ),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DiceRoller()
              ],
            )
          ],
        )
      ),
    );
  }
}
