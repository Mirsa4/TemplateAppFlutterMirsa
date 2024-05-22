


import 'package:flutter/material.dart';

//Crear arreglo de colores

const colorList = <Color>[
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.yellow,
  Colors.grey,
  Colors.purple,
  Colors.red,
  Colors.orange,
  Colors.teal
];




class AppTheme {

final int selectedColor;


//para crear el constructor posicionarse sobre el nombre de la clase y presionar la tecla ctrl + . y seleccionar created constructor for final filds, required named
  AppTheme({ 
    this.selectedColor = 0
    //Seleccionar un color que solo esté dentro de mi arreglo
    }):assert(selectedColor >= 0, 'Selected color must be greater then 0' ), //para que no sea menor a 0 y que no sea mayor a la longitud del arreglo.
      assert(selectedColor < colorList.length, 'Selected color must be less or aqual than ${colorList.length -1}');  // el -1 es porque el índice del arreglo inicia desde el 0
      
//Aqui se indica que el color seleccionado sea de la lista que fue creada.

  ThemeData getThem() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      // appBarTheme: const AppBarTheme(
      //   centerTitle: true
      //  )
  );



}