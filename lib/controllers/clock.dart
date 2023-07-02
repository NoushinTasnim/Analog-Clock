import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../model/my_theme_provider.dart';
import '../size_config.dart';
import 'clock_painter.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50), vertical: getProportionateScreenHeight(50)),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,0),
                    color: kShadowColor.withOpacity(0.2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,0),
                        color: kShadowColor.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 1
                      ),
                    ],
                  ),
                  child: Transform.rotate(
                    angle: -pi/2,
                    child: CustomPaint(
                      painter: ClockPainter(context, _dateTime),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Consumer<MyThemeModel>(
            builder: (context, theme, child) => GestureDetector(
              onTap: ()=>  theme.changeTheme(),
              child: SvgPicture.asset(
                theme.isLightTheme? 'assets/icons/Sun.svg': 'assets/icons/Moon.svg',
                height: 24,
                width: 24,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ),
      ],
    );
  }
}

