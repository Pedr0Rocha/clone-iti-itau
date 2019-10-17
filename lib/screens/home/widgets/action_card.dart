
import 'dart:ui' as prefix0;

import 'package:clone_iti_itau/util/colors.dart';
import 'package:clone_iti_itau/util/styles.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {

  final String mainText;
  final String secondaryText;
  final IconData icon;

  ActionCard(this.mainText, this.secondaryText, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: AppStyles.marginTiny, right: AppStyles.marginTiny),
      child: Stack(
        overflow: Overflow.clip,
        alignment: Alignment.topRight,
        children: <Widget>[
          _cardContainer(),
          Positioned(
            top: -18.0,
            right: -30.0,
            child: Icon(icon, size: 120.0, color: Colors.grey[300].withOpacity(0.3),)
          ),
        ],
      ),
    );
  }

  Widget _cardContainer() {
    return Container(
      width: 140.0,
      child: _cardBody(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.98],
          colors: [AppColors.orange, AppColors.pink]
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(AppStyles.defaultBorderRadius),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0)
          ),
        ]
      ),
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, bottom: 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(mainText, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),),
          Text(secondaryText, style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),),
        ],
      ),
    );

  }
}