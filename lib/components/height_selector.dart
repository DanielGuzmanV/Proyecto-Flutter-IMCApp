import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/config/theme/text_style.dart';

class HeightSelector extends StatefulWidget {
  final double alturaUser;
  final Function(double) fnOnChanged;
  
  const HeightSelector({
    super.key, 
    required this.alturaUser, 
    required this.fnOnChanged
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  // double heightValue = 150;

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
            const SizedBox(height: 10,),
            const Text(
              'ALTURA',
              style: ClaseTextStyles.bodyText,
            ),
      
            Text(
              "${widget.alturaUser} cm",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
      
            Slider(
              value: widget.alturaUser,
              onChanged: (double valueHeight) {
                widget.fnOnChanged(valueHeight);
              },
              min: 150,
              max: 220,
              divisions: 70,
              label: "${widget.alturaUser} cm",
              activeColor: ThemeColor.accent,
            ),
          ]
        ),
      ),
    );
  }
}
