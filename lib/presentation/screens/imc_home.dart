import 'package:flutter/material.dart';
import 'package:imc_app/components/gender_selector.dart';
import 'package:imc_app/components/height_selector.dart';
import 'package:imc_app/components/number_selector.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/config/theme/text_style.dart';

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
    return Column(
      children: <Widget> [

        // Clases:
        const GenderSelector(),
        const HeightSelector(),

        // widgets de edad y peso:
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: <Widget> [
          
              // Clase para seleccionar el peso:
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
              
              // Clase para seleccionar la edad:
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

        const Spacer(),

        // Clase para el boton de calcular:
        Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 60,
            width: double.infinity,

            child: ElevatedButton(
              onPressed: () {}, 
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                backgroundColor: WidgetStateProperty.all(ThemeColor.primary)
              ),
              child: const Text(
                'Calcular',
                style: ClaseTextStyles.bodyText,
              )
            ),
          ),
        ),

      ],
    );
  }
}




