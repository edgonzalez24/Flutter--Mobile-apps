import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Counter Function',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: const Color.fromARGB(255, 52, 99, 138),
            ),
          ),
        ),
        // leading: IconButton(onPressed: () {},
        //   icon: Icon(Icons.refresh_rounded)
        // ),
        actions: [
          IconButton(
            onPressed: () => setState(() => clickCounter = 0),
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
                color: const Color.fromARGB(255, 52, 99, 138),
              ),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            tooltipText: 'Restart Counter',
            onPressed: () => setState(() => clickCounter = 0),
          ),
          SizedBox(height: 20),
          CustomButton(
            icon: Icons.plus_one,
            tooltipText: 'Increment Counter',
            onPressed: () => setState(() => clickCounter++),
          ),
          SizedBox(height: 20),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            tooltipText: 'Dicrease Counter',
            onPressed: () {
              if (clickCounter < 1) return;
              setState(() => clickCounter = 0);
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String tooltipText;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.tooltipText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      enableFeedback: true,
      shape: StadiumBorder(),
      onPressed: onPressed,
      tooltip: tooltipText,
      child: Icon(icon),
    );
  }
}
