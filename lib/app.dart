import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) =>  MaterialApp(
    home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: [
          Text("Ciao",
          style: TextStyle(
            fontFamily: 'Nunito',
          ),
          ),
          Text("Ciao",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
            ),
          ),
          Text("Ciao",
            style: TextStyle(
              fontFamily: 'Ranchers',
              fontWeight: FontWeight.w900,
            ),
          ),
          Image.asset("assets/images/credo.png"),
        ],
      ),
    ),
  );
}
