
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
      body: bodyResult(context),
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
  Padding bodyResult(BuildContext context) {

    // Calculos:
    double fixedAltura = valueAltura / 100;
    double imcResultado = valuePeso / (fixedAltura * fixedAltura);
    // ===========================================================

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
                    Text(
                      getTitleByImc(imcResultado), 
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: getColorByImc(imcResultado)
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
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        getByDescription(imcResultado), 
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),

                        textAlign: TextAlign.center,
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
              onPressed: (){
                Navigator.pop(context);
              }, 
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                backgroundColor: WidgetStateProperty.all(ThemeColor.primary)
              ),
              child: const Text('Finalizar', style: ClaseTextStyles.bodyText)
            ),
          ),
          // ====================================================================


        ],
      ),
    );
  }
  
  // Metodo para el color del titulo:
  Color getColorByImc(double imcResultado) {
    return switch (imcResultado) {
      < 18.5 => Colors.blue,
      < 24.9 => Colors.green,
      < 29.99 => Colors.orange,
      _ => Colors.red,
    };
  }
  // ====================================================

  // Metodo para cambiar el titulo:
  String getTitleByImc(double imcResultado) {
    return switch (imcResultado) {
      < 18.5 => 'Imc Bajo',
      < 24.9 => 'Imc Normal',
      < 29.99 => 'Sobrepeso',
      _ => 'Obesidad',
    };
  }

  // Metodo para cambiar la descripcion:
  String getByDescription(double imcResultado) {
    return switch (imcResultado) {
      < 18.5 => 'Peso por debajo de lo normal',
      < 24.9 => 'Peso en el rango saludable',
      < 29.99 => 'Sobrepeso, cuida tu alimentacion',
      _ => 'Obesidad, consulta con un especialista',
    };
  }

}





