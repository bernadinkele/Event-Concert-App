import 'package:event_concert_app/core/math_utils.dart';
import 'package:event_concert_app/presentation/models/event_model.dart';
import 'package:event_concert_app/presentation/screens/event_tile.dart';
import 'package:event_concert_app/presentation/screens/lastest_event_tile.dart';
import 'package:event_concert_app/res/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConcertsView extends StatelessWidget {
  const ConcertsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);
    return Scaffold(
      backgroundColor: const Color(0xFF212835),
     body: Stack(
       children: [
       Positioned.fill(child:   Column(
         children: [
           Container(
             height: 328,
             width: double.infinity,
             decoration: const BoxDecoration(
                 image: DecorationImage(image: AssetImage(AssetsConstants.bachGround), fit: BoxFit.fill)
             ),
           ),
           Expanded(child: Container())
         ],
       ),),
         Positioned.fill(
           child: Container(
             decoration:  const BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors: [
                       Colors.transparent,
                       Color(0xFF212835),


                     ]
                 )
             ),
           ),
         ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(

              children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         CircleAvatar(
                           backgroundImage: const AssetImage(AssetsConstants.user),
                           radius: getSize(20),
                         ),
                         Icon(Icons.menu, color: Colors.white, size: getSize(24),)
                       ],
                     ),
                     const Gap(176),
                     const Text(
                       'Upcoming event',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Color(0xFFF9FAFC),
                         fontSize: 16,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w400,

                       ),
                     ),
                     const Text(
                       'Above & Beyond\n#ABGT500',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Color(0xFFF9FAFC),
                         fontSize: 28,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w600,

                       ),
                     ),
                     const Gap(18),
                     Row(
                       children: [
                         Container(
                           width: 170,
                           height: 43,
                           decoration: ShapeDecoration(
                             color: const Color(0xFF865CD0),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(14),
                             ),
                           ),
                           child: const Center(
                             child: Text(
                               'See dates',
                               style: TextStyle(
                                 color: Color(0xFFF9FAFC),
                                 fontSize: 16,
                                 fontFamily: 'Poppins',
                                 fontWeight: FontWeight.w400,

                               ),
                             ),
                           ),
                         ),
                         const Gap(14),
                         Container(
                           width: 170,
                           height: 43,
                           decoration: ShapeDecoration(
                             color: const Color(0xFF2F3A4B),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(14),
                             ),
                           ),
                           child: const Center(
                             child: Text(
                               'Tickets',
                               style: TextStyle(
                                 color: Color(0xFFF9FAFC),
                                 fontSize: 16,
                                 fontFamily: 'Poppins',
                                 fontWeight: FontWeight.w400,
                                 height: 0,
                               ),
                             ),
                           ),
                         )
                       ],
                     )
                     ,
                     const Gap(32),
                     const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Events in your city',
                           style: TextStyle(
                             color: Color(0xFFF9FAFC),
                             fontSize: 16,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.w500,
                             height: 0,
                           ),
                         ),
                         Text(
                           'See all',
                           style: TextStyle(
                             color: Color(0xFFA995CE),
                             fontSize: 12,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.w400,

                           ),
                         )

                       ],
                     ),
                     const Gap(19),
                   ],
                 ),
               ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:eventsDemos.asMap().map((key, value) => MapEntry(key, Padding(
              padding: EdgeInsets.only(left: key==0?getWidth(24):getWidth(12)),
              child: EventTile(eventModel: value),
            ))).values.toList()
          ), ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
               child: Column(
                 children: [
                 const Gap(10),
                   const Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Past events',
                         style: TextStyle(
                           color: Color(0xFFF9FAFC),
                           fontSize: 16,
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w500,
                           height: 0,
                         ),
                       ),
                       Text(
                         'See all',
                         style: TextStyle(
                           color: Color(0xFFA995CE),
                           fontSize: 12,
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w400,

                         ),
                       )

                     ],
                   ),
                   const Gap(10),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       LatestEventTile(eventModel: lastEventsDemos[0]),
                       LatestEventTile(eventModel: lastEventsDemos[1]),
                     ],
                   ),



                 ],
               ),
             )




                           ],
            ),
          ),
        )



       ],
     ),
    );
  }
}
