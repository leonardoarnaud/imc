import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_app/ui/home_controller.dart';

import 'imc_textfield.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/imc-logo.png",
              width: 90.0,
              height: 90.0,
            ),
            Text(
              homeController.message,
              style: TextStyle(
                  fontSize: 21.0
              ),
            ),
            ImcTextField(
              controller: homeController.ageController,
              label: "Idade",
              iconData: Icons.person_outline,
            ),
            ImcTextField(
              controller: homeController.heightController,
              label: "Altura(cm)",
              iconData: Icons.assessment,
            ),
            ImcTextField(
              controller: homeController.weightController,
              label: "Peso(kg)",
              iconData: Icons.calendar_view_day,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                  ),
                ),
                onPressed: () => setState((){
                  homeController.generateDiagnosis();
                }),
                color: Colors.pink,
              ),
            ),
          ],
        )
      ),
    );
  }
}


