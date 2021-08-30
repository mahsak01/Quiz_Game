import 'package:flutter/material.dart';
import 'package:quizgame_app/constants.dart';
class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: GrayColor
                )
              ),
            ),
          //  if(context.read<ProviderController>().start>0)
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Container(
                height: 38,
                width: ((MediaQuery.of(context).size.width/1.2)-4),//*context.read<ProviderController>().start ,
                decoration: BoxDecoration(
                    gradient: PrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.access_time,
            color: GrayColor,
            size: 30,
          ),
        )
      ],
    );
  }
}
