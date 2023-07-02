import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../size_config.dart';
import '../widgets/add_btn.dart';
import '../widgets/body_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: bodyWidget()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/Settings.svg',
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {  },
        ),
        actions: [
          buildAddButton()
        ]
    );
  }
}