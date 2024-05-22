
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        //aqui se está agregando un botón para regresar a la pantalla anterior.
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          //Esto sirve para crear los botones y cuando ya no haya espacio se crean en un nueva linea.
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(
                onPressed: null,
                child: Text(
                    'Elevated Disabled')), //Esto es para deshabilitar el botón

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevate Icon'),
            ),
            //este boton se muestra relleno.
            FilledButton(
                onPressed: () {},
                child: const Text(
                    'Filled')), //las funciones se dejan en los botones para que se puedan presionar esto se indica con (){}

            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined),
              label: const Text('Filled Icon'),
            ),

            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
                onPressed: () {},
                label: const Text('Outline Icon'),
                icon: const Icon(Icons.terminal)),

            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.account_box_outlined),
                label: const Text('Text Icon')),


            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                //arriba se declaró una variable, donde se llama el thema predefinido
                backgroundColor: MaterialStatePropertyAll(colors
                    .primary), //esto es para indicar el color del relleno del icono
                iconColor: const MaterialStatePropertyAll(
                    Colors.white), //Indica el color del icono
              ),
            ),


              IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded)
            ),


            const CustomButton(),
          //crean un boton personalizado desde 0

            // end of buttons
          ],
        ),
      ),
    );
  }
}


//clase para crear un boton personalizado, este puede ser utilizado en cualquier lugar

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

final colors = Theme.of(context).colorScheme;

    return  ClipRRect(
      borderRadius: BorderRadius.circular(20), //esto hace que se redondee este boton
      child: Material( //Este es el texto que se muestra en la pantalla. Tiene un fondo de color definido como primario y un texto de color blanco.
        color:  colors.primary,
        child: InkWell(
          onTap: (){}, //Esta funcion no hace nada pero si se ve el splash de reacción, esta es totalmente configurable
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}