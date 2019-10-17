import 'package:clone_iti_itau/util/colors.dart';
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
        title: Text("iti", style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.w500),),
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
        height: MediaQuery.of(context).size.height,
        color: AppColors.background,
        child: Column(
          children: <Widget>[
            _userAvatar(),
            _infoBalance(),
            _carouselActions(),
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
    return Container();
  }

  Widget _carouselActions() {
    return Container();
  }
}