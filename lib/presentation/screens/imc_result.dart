
import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/config/theme/text_style.dart';

class ImcResultScreen extends StatelessWidget {

  final int valuePeso;
  final double valueAltura;

  const ImcResultScreen({
    super.key, 
    required this.valuePeso, 
    required this.valueAltura
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.background,

      appBar: appResult(),

      body: bodyResult(),
    );
  }

  // Funcion para el appBar:
  AppBar appResult() {
    return AppBar(
      title: const Text('Resultados'),
      backgroundColor: ThemeColor.primary,
      foregroundColor: Colors.white,
    );
  }

  // Funcion para el body:
  Padding bodyResult() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // Title:
          const Text('Tu resultado: ', style: ClaseTextStyles.textTitle,),

          // Body
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),

              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ThemeColor.backgroundComponent,
                  borderRadius: BorderRadius.circular(16)
                ),
              
                // Values body:
                child: Column(
                  children: [
                    Text(valuePeso.toString(), style: ClaseTextStyles.bodyText,),
                    Text(valueAltura.toString(), style: ClaseTextStyles.bodyText,),
                  ],
                ),
              
              ),
            )
          ),

          // Boton para finalizar:
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){}, 
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                backgroundColor: WidgetStateProperty.all(ThemeColor.primary)
              ),
              child: const Text('Finalizar', style: ClaseTextStyles.bodyText)
            ),
          ),
        ],
      ),
    );
  }

}





