import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + Material 3'),
        ),
        body: const _HomeView());
  }
}

//Este es un listado de widgets que se mostrarán en un list, estos se crean hacia abajo

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        // return Text( menuItem.title);
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }

  // ignore: non_constant_identifier_names
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context)
        .colorScheme; //despues de crear el sneppet solo se llama. Para crearlo ctrl + shift + p , escribir user snippets, dart y enter. (crearlo)

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        /*  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const ButtonsScreen(),
    ),
  );
     */

        context.push(menuItem.link);

        // context.pushNamed(CardsScreen.name); //para llamar por nombre de pantalla

//pushName con nombre

        // Navigator.pushNamed(context, menuItem.link); //para facilitar la navegación entre screens se utilizará el go-router.
      },
    );
  }
}
