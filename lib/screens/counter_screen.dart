import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;
  void increment() {
    counter++;
    setState(() {});
  }

  void decrement() {
    counter--;
    setState(() {});
  }

  void zero() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.orange);

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.deepOrangeAccent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        )),
        title: const Text('Counter'),
        elevation: 20.0,
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Center(
                child: Text('$counter'),
              )));
            },
          )
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks Counter', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: CustomFloatingActions(
        incrementFn: increment,
        decrementFn: decrement,
        zeroFn: zero,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function incrementFn;
  final Function decrementFn;
  final Function zeroFn;
  const CustomFloatingActions({
    super.key,
    required this.incrementFn,
    required this.decrementFn,
    required this.zeroFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent,
          child: const Icon(Icons.exposure_zero,
              size: 26,
              color: Colors.amberAccent,
              textDirection: TextDirection.ltr),
          onPressed: () => zeroFn()
          // setState(() => counter = 0);
          ,
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
            backgroundColor: Colors.deepOrangeAccent,
            child: const Icon(Icons.add,
                size: 26,
                color: Colors.amberAccent,
                textDirection: TextDirection.ltr),
            onPressed: () => incrementFn()
            // setState(() => counter++);
            ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
            backgroundColor: Colors.deepOrangeAccent,
            child: const Icon(Icons.remove,
                size: 26,
                color: Colors.amberAccent,
                textDirection: TextDirection.ltr),
            onPressed: () => decrementFn()
            // setState(() => counter--);

            ),
      ],
    );
  }
}
