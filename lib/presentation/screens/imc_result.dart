
import 'package:flutter/material.dart';
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
    return Column(
      children: [
        const SizedBox(height: 40,),
        Text(valuePeso.toString(), style: ClaseTextStyles.bodyText,),
        Text(valueAltura.toString(), style: ClaseTextStyles.bodyText,),
      ],
    );
  }
}





