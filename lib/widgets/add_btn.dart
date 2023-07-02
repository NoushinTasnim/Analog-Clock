import 'package:flutter/material.dart';

import '../size_config.dart';

class buildAddButton extends StatelessWidget {
  const buildAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: getProportionateScreenWidth(32),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
