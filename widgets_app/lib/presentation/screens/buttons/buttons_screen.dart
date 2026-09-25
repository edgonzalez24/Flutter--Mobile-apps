import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elavated Button')),
            ElevatedButton(onPressed: null, child: Text('Elavated Disabled')),
            ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.access_alarm_outlined), label: Text('Elavated Icon')),
            FilledButton(onPressed: (){}, child: Text('Filled')),
            FilledButton.icon(onPressed: () {}, icon: Icon(Icons.padding), label: Text('Filled Icon')),
            OutlinedButton(onPressed: (){}, child: Text('Outline Button')),
            OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.perm_camera_mic), label: Text('Outline Icon')),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            TextButton.icon(onPressed: () {}, icon: Icon(Icons.camera), label: Text('Text Icon')),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.read_more),
              color: Colors.white,
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(colors.primary))
            )
          ],
        ),
      ),
    );
  }
}
