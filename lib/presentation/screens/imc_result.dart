
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
  //  ============================================

  // Funcion para el appBar:
  AppBar appResult() {
    return AppBar(
      title: const Text('Resultados'),
      backgroundColor: ThemeColor.primary,
      foregroundColor: Colors.white,
    );
  }
  //  ============================================

  // Funcion para el body:
  Padding bodyResult() {

    // Calculos:
    double fixedAltura = valueAltura / 100;
    double imcResultado = valuePeso / (fixedAltura * fixedAltura);

    // =======================================

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // -- Title --:
          const Text('Tu resultado: ', style: ClaseTextStyles.textTitle,),

          // -- Body --:
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Titulo:
                    const Text(
                      'Normal', 
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),

                    // Resultado de altura y peso:
                    Text(
                      imcResultado.toStringAsFixed(2), 
                      style: const TextStyle(
                        fontSize: 76,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    // Descripcion:
                    const Text(
                      'Descripcion:', 
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),

                  ],
                ),
              
              ),
            )
          ),

          // -- Boton para finalizar --:
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
  // ====================================================

}





