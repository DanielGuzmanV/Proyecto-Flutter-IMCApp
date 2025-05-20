import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/config/theme/text_style.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColor.backgroundComponent,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            const Text(
              'ALTURA',
              style: ClaseTextStyles.bodyText,
            ),
      
            Text(
              "${height.toStringAsFixed(0)} cm",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
      
            Slider(
              value: height,
              onChanged: (valueHeight) {
                setState(() {
                  height = valueHeight;
                });
              },
              min: 150,
              max: 220,
              divisions: 70,
              label: "${height.toStringAsFixed(0)} cm",
              activeColor: ThemeColor.accent,
            ),
          ]
        ),
      ),
    );
  }
}
