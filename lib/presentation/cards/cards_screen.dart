import 'package:flutter/material.dart';


//arreglo de tarjetas o cards
const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'elevation 0'},
  {'elevation': 1.0, 'label': 'elevation 1'},
  {'elevation': 2.0, 'label': 'elevation 2'},
  {'elevation': 3.0, 'label': 'elevation 3'},
  {'elevation': 4.0, 'label': 'elevation 4'},
  {'elevation': 5.0, 'label': 'elevation 5'}
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //se sabe que son pantallas si tienen un Scaffold
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //Para quitar el desbordamiento se envolvió la columna en el widget lalmado: SingleChildScrollView, esto hará que haya un scroll.
      child: Column(
        //inicio de lo que se muestra en la pantalla
        children: [
          ...cards.map((card) => _CardType1(
                elevation: card['elevation'],
                label: card['label'],
              )),

          ...cards.map((card) => _CardType2(
                elevation: card['elevation'],
                label: card['label'],
              )),

          ...cards.map((card) => _CardType3(
                elevation: card['elevation'],
                label: card['label'],
              )),

                ...cards.map((card) => _CardType4(
                elevation: card['elevation'],
                label: card['label'],
              )),

          const SizedBox(
              height:
                  50), //Esto hace que el scroll suba más. este es el espacio que se muestra en el pie de pantalla.
        ], //fin de lo que se muestra en la pantalla
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  //añadir al constructor las instacias
  const _CardType1(
      { //Se removió el key, estos se usan para mantener la referencia a un widget
      required this.label,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      //El Card es un widget de flutter
      elevation: elevation,
      child: Padding(
        //El padding se utiliza para mantener una separación en ambos lados.
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              //Aquí se envolvió este icono para converirlo en aligment, este se expandió en toda la pantalla, aqui se observa un desbordamiento al girar la pantalla.
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Align(
              //Este texto se muestra dentro de las tarjetas.
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
//Cuando hay desbordamiento ocurre porque en la pantalla no se alcanza a ver todos los pixeles, indica que hay más infromación pero el dispositivo no es capaz de mostrarla.
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  //añadir al constructor las instacias
  const _CardType2(
      { //Se removió el key, estos se usan para mantener la referencia a un widget
      required this.label,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    //ahora los bordes han cambiado a cuadrado porque el RoundedRectangleBorder no tiene ninguno especificado, entonces toma el cuadrado por defecto
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(
              12)), //Con esto el borde cambia a redondo, este borde cambia de color dependiendo del tema, ya sea dark o light
          side: BorderSide(color: colors.outline)),
      elevation: elevation,
      child: Padding(
        //El padding se utiliza para mantener una separación en ambos lados.
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              //Aquí se envolvió este icono para converirlo en aligment, este se expandió en toda la pantalla, aqui se observa un desbordamiento al girar la pantalla.
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Align(
              //Este texto se muestra dentro de las tarjetas.
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            )
//Cuando hay desbordamiento ocurre porque en la pantalla no se alcanza a ver todos los pixeles, indica que hay más infromación pero el dispositivo no es capaz de mostrarla.
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  //añadir al constructor las instacias
  const _CardType3(
      { //Se removió el key, estos se usan para mantener la referencia a un widget
      required this.label,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors
          .surfaceVariant, //Se agregó otro color para las card, la elevación hace que el color se vea lleno en la primera tarjeta.-

      //El Card es un widget de flutter
      elevation: elevation,
      child: Padding(
        //El padding se utiliza para mantener una separación en ambos lados.
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              //Aquí se envolvió este icono para converirlo en aligment, este se expandió en toda la pantalla, aqui se observa un desbordamiento al girar la pantalla.
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Align(
              //Este texto se muestra dentro de las tarjetas.
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled'),
            )
//Cuando hay desbordamiento ocurre porque en la pantalla no se alcanza a ver todos los pixeles, indica que hay más infromación pero el dispositivo no es capaz de mostrarla.
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  //añadir al constructor las instacias
  const _CardType4(
      { //Se removió el key, estos se usan para mantener la referencia a un widget
      required this.label,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge, //esto redondea la tarjeta y evita que los hijos se salgan de su padre.
      color: colors
          .surfaceVariant, //Se agregó otro color para las card, la elevación hace que el color se vea lleno en la primera tarjeta.-

      //El Card es un widget de flutter
      elevation: elevation, 
      // aqui se removerá el padding, esto se puede hacer haciendo clic en ctrl + . y buscar remove this widget
      child: Stack( //se modifica la columna por el stack, la diferencia entre estos dos es que el stack coloca los widgets uno sobre otros el que esté primero es el de más abajo.
        children: [
      
          Image.network(
      
            'https://picsum.photos/id/${elevation.toInt()}/600/350', //aqui se está llamando un arreglo de fotos.
            // aqui estan algunas configuraciones para que estas imagenes parezcan tarjetas.

            height: 350,
            fit: BoxFit.cover,

         
          ),
      
          Align(
            //Aquí se envolvió este icono para converirlo en aligment, este se expandió en toda la pantalla, aqui se observa un desbordamiento al girar la pantalla.
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration( //aqui se le agregó el botón de 3 puntos que tiene cada tarjeta
                color: Colors.white,
                borderRadius: BorderRadius.only( bottomLeft: Radius.circular(20))),
              child: IconButton( //para ver bien ese boton envolver el iconButton en un container
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
          ),
      
      //Cuando hay desbordamiento ocurre porque en la pantalla no se alcanza a ver todos los pixeles, indica que hay más infromación pero el dispositivo no es capaz de mostrarla.
        ],
      ),
    );
  }
}
