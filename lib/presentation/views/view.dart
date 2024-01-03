import 'package:flutter/material.dart';

class SView extends StatelessWidget {
  const SView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 926,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF212835),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -88,
            top: 0,
            child: Container(
              width: 603,
              height: 328,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [const Color(0xFF010101), Colors.black.withOpacity(0)],
                ),
              ),
            ),
          ),
          Positioned(
            left: 503,
            top: 490,
            child: Opacity(
              opacity: 0.50,
              child: Container(
                width: 28,
                height: 28,
                decoration: ShapeDecoration(
                  color: const Color(0xFF010101),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 509,
            top: 496,
            child: Container(
              width: 16,
              height: 16,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),

            ),
          ),
          Positioned(
            left: 163,
            top: 496,
            child: Container(
              width: 16,
              height: 16,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
            ),
          ),
          Positioned(
            left: 367,
            top: 58,
            child: Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: const Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 3,
                            top: 6,
                            child: SizedBox(
                              width: 18,
                              height: 12,
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 33,
            top: 50,
            child: Container(
              width: 40,
              height: 40,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/40x40"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
