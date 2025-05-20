import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/config/theme/text_style.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectGenero;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Select male: 
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectGenero = "Hombre";
              });
            },

            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: selectGenero == "Hombre" 
                  ? ThemeColor.backgroundComponentSelected
                  : ThemeColor.backgroundComponent,
              
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset('assets/images/male.png', height: 100,),
                      const SizedBox(height: 30,),
                      Text(
                        'Hombre'.toUpperCase(), 
                        style: ClaseTextStyles.bodyText
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        // =================================================================

        // Select famale:
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectGenero = "Mujer";
              });
            },

            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: selectGenero == "Mujer" 
                  ? ThemeColor.backgroundComponentSelected
                  : ThemeColor.backgroundComponent,
              
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset('assets/images/female.png', height: 100,),
                      const SizedBox(height: 30,),
                      Text(
                        'Mujer'.toUpperCase(), 
                        style: ClaseTextStyles.bodyText
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),


      ],
    );
  }
}


