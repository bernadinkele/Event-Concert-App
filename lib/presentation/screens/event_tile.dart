import 'package:event_concert_app/core/math_utils.dart';
import 'package:event_concert_app/presentation/models/event_model.dart';
import 'package:event_concert_app/res/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventTile extends StatelessWidget {
  const EventTile({Key? key, required this.eventModel}) : super(key: key);
final EventModel eventModel;
  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [

        Container(
          height: getHeight(215),
          width: getWidth(161),
          padding: EdgeInsets.all(getSize(10)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getSize(18)),
              image: DecorationImage(image: AssetImage(eventModel.coverImage), fit: BoxFit.fill)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Opacity(
                opacity: 0.50,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: ShapeDecoration(
                    color: Color(0xFF010101),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Icon(Icons.favorite , color: Colors.white, size: getSize(16),),
                ),
              )
            ],
          ),
        ),
        Positioned.fill(child: Container(
          width: 161,
          height: 215,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Colors.black.withOpacity(0), Colors.black],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        )),
        Positioned(
            left: getSize(16),
            right: getSize(16),
            bottom: getSize(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  eventModel.name,
                  style: TextStyle(
                    color: Color(0xFFFEFDFF),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                Gap(4),
                Text(
                  eventModel.date,
                  style: TextStyle(
                    color: Color(0xFFFEFDFF),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )
              ],
            ))

      ],
    );
  }
}
