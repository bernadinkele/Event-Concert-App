import 'package:event_concert_app/core/math_utils.dart';
import 'package:event_concert_app/res/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);


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
                height: 228,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetsConstants.bachGround), fit: BoxFit.cover)
                ),
              ),
              Expanded(child: Container())
            ],
          ),),
          Positioned.fill(
            child: Column(
              children: [
                Gap(200),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xFF212835)
                        ]
                    ),
                  ),
                )
              ],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.arrow_back, color: Colors.white, size: getSize(24),),
                            Icon(Icons.share, color: Colors.white, size: getSize(24),)
                          ],
                        ),
                        const Gap(184),

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
                        const Gap(14),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: getSize(20),color:  const Color(0xFFA995CE),),
                            const Gap(12),
                            const Text(
                              'Los Angeles, California',
                              style: TextStyle(
                                color: Color(0xFFA995CE),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,

                              ),
                            )
                          ],
                        )
                        ,
                        const Gap(14),
                        const Text(
                          'LINE UP',
                          style: TextStyle(
                            color: Color(0xFFF9FAFC),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: 0.56,
                          ),
                        ),
                        const Gap(3),
                        const Text(
                          'Genix - Ben Bohmer - Ilan Bluestone\nMat Zo - Pretty Pink - Trance Wax',
                          style: TextStyle(
                            color: Color(0xFFF9FAFC),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                        const Gap(29),
                        Container(
                          width: double.infinity,

                          padding: EdgeInsets.symmetric(horizontal: getWidth(12), vertical: getHeight(10)),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2F3A4B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                               children: [
                                 Container(
                                   width: getHeight(50),
                                   height: getHeight(50),
                                   decoration: ShapeDecoration(
                                     color: const Color(0xFFF4F7F9),
                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                   ),
                                   child: const Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Text(
                                         '15',
                                         textAlign: TextAlign.center,
                                         style: TextStyle(
                                           color: Color(0xFF212835),
                                           fontSize: 22,
                                           fontFamily: 'Poppins',
                                           fontWeight: FontWeight.w500,

                                           letterSpacing: 0.44,
                                         ),
                                       ),
                                       Text(
                                         'SEP',
                                         textAlign: TextAlign.center,
                                         style: TextStyle(
                                           color: Color(0xFF212835),
                                           fontSize: 14,
                                           fontFamily: 'Poppins',
                                           fontWeight: FontWeight.w500,

                                           letterSpacing: 0.28,
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                                 Gap(12),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Pre-Party',
                                       style: TextStyle(
                                         color: Color(0xFFF9FAFC),
                                         fontSize: 16,
                                         fontFamily: 'Poppins',
                                         fontWeight: FontWeight.w500,

                                       ),
                                     ),
                                     Gap(3),
                                     Text(
                                       'Saturday 6:00 pm',
                                       style: TextStyle(
                                         color: Color(0xFFF9FAFC),
                                         fontSize: 10,
                                         fontFamily: 'Poppins',
                                         fontWeight: FontWeight.w400,

                                       ),
                                     ),
                                     Gap(3),
                                     Text(
                                       'Dolby Theatre',
                                       style: TextStyle(
                                         color: Color(0xFFF9FAFC),
                                         fontSize: 10,
                                         fontFamily: 'Poppins',
                                         fontWeight: FontWeight.w400,

                                       ),
                                     )
                                   ],
                                 ),
                               ],
                             ),
                              Row(
                                children: [
                                  Container(
                                    width: getSize(40),
                                    height: getSize(40),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF865CD0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(getSize(12)),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Go',
                                        style: TextStyle(
                                          color: Color(0xFFF9FAFC),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                    ),
                                  ),
                                  Gap(12),
                                  Container(
                                    width: getSize(40),
                                    height: getSize(40),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF4F7F9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(getSize(12)),
                                      ),
                                    ),

                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                        Gap(10),
                        Container(
                          width: double.infinity,

                          padding: EdgeInsets.symmetric(horizontal: getWidth(12), vertical: getHeight(10)),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2F3A4B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: getHeight(50),
                                    height: getHeight(50),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF4F7F9),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '15',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF212835),
                                            fontSize: 22,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,

                                            letterSpacing: 0.44,
                                          ),
                                        ),
                                        Text(
                                          'SEP',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF212835),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,

                                            letterSpacing: 0.28,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Gap(12),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pre-Party',
                                        style: TextStyle(
                                          color: Color(0xFFF9FAFC),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ),
                                      Gap(3),
                                      Text(
                                        'Saturday 6:00 pm',
                                        style: TextStyle(
                                          color: Color(0xFFF9FAFC),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                      Gap(3),
                                      Text(
                                        'Dolby Theatre',
                                        style: TextStyle(
                                          color: Color(0xFFF9FAFC),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,

                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: getSize(40),
                                    height: getSize(40),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF865CD0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(getSize(12)),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Go',
                                        style: TextStyle(
                                          color: Color(0xFFF9FAFC),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                    ),
                                  ),
                                  Gap(12),
                                  Container(
                                    width: getSize(40),
                                    height: getSize(40),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF4F7F9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(getSize(12)),
                                      ),
                                    ),

                                  )
                                ],
                              )

                            ],
                          ),
                        ),

                        const Gap(34),
                        Container(
                          width: 354,
                          height: 138,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(AssetsConstants.map),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),




                ],
              ),
            ),
          )



        ],
      ),
    );
  }
}
