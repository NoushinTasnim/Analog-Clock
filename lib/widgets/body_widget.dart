import 'package:analog_clock/widgets/time_in_hour_min.dart';
import 'package:flutter/material.dart';
import '../controllers/clock.dart';

class bodyWidget extends StatelessWidget {
  const  bodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Clock(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Chittagong',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Text(
            'Bangladesh',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}