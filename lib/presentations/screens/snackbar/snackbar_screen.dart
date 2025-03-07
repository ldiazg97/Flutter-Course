import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
  static const name = 'snackbar_screen';
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbak = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbak);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text('¿Estás seguro?'),
            content: Text(
              'Amet adipisicing consectetur consequat veniam irure anim Lorem. Qui nisi ullamco ipsum ipsum enim commodo irure sint aute fugiat laboris minim nisi nulla. Laboris dolore labore pariatur magna est ullamco aute aliquip cillum consectetur velit magna cillum velit.',
            ),
            actions: [
              TextButton(
                onPressed: () => context.pop(),
                child: Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () => context.pop(),
                child: Text('Acptar'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar y Diálogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Ad eu ullamco aliqua fugiat exercitation culpa proident nulla anim labore.Magna ipsum quis officia fugiat cupidatat qui anim do minim aute labore ad exercitation fugiat. Enim pariatur eu ex elit irure reprehenderit. Proident commodo minim incididunt laborum quis ipsum reprehenderit. Lorem veniam esse magna Lorem cillum occaecat ex eiusmod. Non tempor qui tempor aliquip. Mollit tempor velit velit adipisicing dolore proident pariatur dolor proident ea. Eiusmod mollit dolore eu fugiat dolor.',
                    ),
                  ],
                );
              },
              child: Text('Licencias Usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar Diálogos'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
