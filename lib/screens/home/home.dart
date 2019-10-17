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
        child: Container(),
      ),
    );
  }
}