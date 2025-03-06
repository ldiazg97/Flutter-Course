import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtomsScrenn extends StatelessWidget {
  const ButtomsScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttoms Screen')),
      body: _ButtomsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtomsView extends StatelessWidget {
  const _ButtomsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated Buttom')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Elevated Icon'),
            ),
            FilledButton(onPressed: () {}, child: Text('Field')),
            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.accessibility_new_rounded),
              label: Text('Field Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.terminal),
              label: Text('Outlined Icon'),
            ),
            TextButton(onPressed: () {}, child: Text('Text')),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_box_outlined),
              label: Text('Text Icon'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
