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

  int selectEdad = 15;
  int selectPeso = 50;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [

        // Clases:
        const GenderSelector(),
        const HeightSelector(),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: <Widget> [
          
              Expanded(
                child: NumberSelector(
                  title: 'PESO', 
                  value: selectPeso, 
                  onDecrement: () {
                    setState(() {
                      if(selectPeso == 0)return;
                        selectPeso--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      selectPeso++;
                    });
                  },
                )
              ),
          
              const SizedBox(width: 16,),
              
              Expanded(
                child: NumberSelector(
                  title: 'EDAD', 
                  value: selectEdad, 
                  onDecrement: () {
                    setState(() {
                      if(selectEdad == 0) return;
                        selectEdad--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      selectEdad++;
                    });
                  },
                )
              ),
            
            ],
          ),
        ),
      ],
    );
  }
}




