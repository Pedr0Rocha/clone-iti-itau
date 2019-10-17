import 'package:clone_iti_itau/util/colors.dart';
import 'package:clone_iti_itau/util/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iti", style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.w600),),
        leading: Icon(Icons.camera_alt),
        backgroundColor: AppColors.background,
        centerTitle: true,
        elevation: 0,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        color: AppColors.background,
        child: Column(
          children: <Widget>[
            SizedBox(height: AppStyles.marginBig,),
            _userAvatar(),
            SizedBox(height: AppStyles.marginBig,),
            _infoBalance(),
            SizedBox(height: AppStyles.marginBig,),
            _actions(),
            _footer(),
          ],
        ),
      ),
    );
  }

  Widget _userAvatar() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        _roundImageWithBorder(imagePath: "assets/img/user.png", imageSize: 80.0, borderWidth: 3.0),
        _roundImageWithBorder(imagePath: "assets/img/qrcode.png", imageSize: 25.0, borderWidth: 3.0),
      ],
    );
  }

  Widget _roundImageWithBorder({ String imagePath, double imageSize, double borderWidth }) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.circular(imageSize),
          ),
          width: imageSize + borderWidth,
          height: imageSize + borderWidth,
        ),
        ClipOval(child: Image.asset(imagePath, width: imageSize, height: imageSize, fit: BoxFit.fill,)),
      ],
    );
  }

  Widget _infoBalance() {
    return Column(
      children: <Widget>[
        Text("oi Pedro, seu saldo agora é:", style: TextStyle(color: Colors.white, fontSize: 18.0),),
        SizedBox(height: AppStyles.marginSmall,),
        Text("R\$ 1.235.353,00", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w600),),
        SizedBox(height: AppStyles.marginSmall,),
        Icon(Icons.visibility_off, size: 26.0, color: Colors.white,)
      ],
    );
  }

  Widget _actions() {
    return Container(
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: AppStyles.marginSmall, right: AppStyles.marginSmall),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: AppStyles.marginTiny, right: AppStyles.marginTiny),
            width: 150.0,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.only(left: AppStyles.marginTiny, right: AppStyles.marginTiny),
            width: 150.0,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.only(left: AppStyles.marginTiny, right: AppStyles.marginTiny),
            width: 150.0,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.only(left: AppStyles.marginTiny, right: AppStyles.marginTiny),
            width: 150.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _footer() {
    return Text("arraste aqui");
  }
}