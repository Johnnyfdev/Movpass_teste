import 'package:flutter/material.dart';
import 'package:movpass_test/components/buttonCustom.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/logo1.webp"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonCustom(
                  texto: "Treinadores",
                  bgColor: Color(0xffE9A945),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                ButtonCustom(
                  texto: "Modalidades",
                  bgColor: Color(0xff242A2C),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
