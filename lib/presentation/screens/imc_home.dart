import 'package:flutter/material.dart';
import 'package:imc_app/components/gender_selector.dart';
import 'package:imc_app/components/height_selector.dart';
import 'package:imc_app/components/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:const <Widget> [
        GenderSelector(),
        HeightSelector(),

        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget> [
          
              Expanded(
                child: NumberSelector(title: 'PESO')
              ),
          
              SizedBox(width: 16,),
              
              Expanded(
                child: NumberSelector(title: 'EDAD')
              ),
            
            ],
          ),
        ),
      ],
    );
  }
}




