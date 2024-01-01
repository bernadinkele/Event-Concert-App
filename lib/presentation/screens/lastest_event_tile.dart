import 'package:event_concert_app/core/math_utils.dart';
import 'package:event_concert_app/presentation/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LatestEventTile extends StatelessWidget {
  const LatestEventTile({Key? key, required this.eventModel}) : super(key: key);
final EventModel eventModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Container(
            height: getSize(50),
            width: getSize(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getSize(10)),
              image: DecorationImage(image: AssetImage(eventModel.coverImage), fit: BoxFit.cover)
            ),
          )  ,
        Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              eventModel.date,
              style: TextStyle(
                color: Color(0xFFFEFDFF),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Gap(4),
            Text(
              eventModel.name,
              style: TextStyle(
                color: Color(0xFFFEFDFF),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            )
          ],
        )
      ],
    );
  }
}
