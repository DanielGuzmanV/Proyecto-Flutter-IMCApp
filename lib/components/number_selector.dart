import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/config/theme/text_style.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({
    super.key, 
    required this.title, 
    required this.onIncrement, 
    required this.value, 
    required this.onDecrement
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeColor.backgroundComponent,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          
          children: [
            Text(widget.title, style: ClaseTextStyles.bodyText,),
            Text(
              widget.value.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),  
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Boton para disminuir
                FloatingActionButton(
                  heroTag: null,
                  onPressed: (){
                    widget.onDecrement();
                  },
                  shape: const CircleBorder(),
                  backgroundColor: ThemeColor.primary,
                  child: const Icon(Icons.remove, color: Colors.white,),
                
                ),

                const SizedBox(width: 16,),
        
                // Boton para aumentar
                FloatingActionButton(
                  heroTag: null,
                  onPressed: (){
                    widget.onIncrement();
                  },
                  shape: const CircleBorder(),
                  backgroundColor: ThemeColor.primary,
                  child: const Icon(Icons.add, color: Colors.white,),
                )
              ],
            )
          
          ],
        ),
      ),
    );
  }
}








