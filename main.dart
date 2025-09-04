import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design library
widgets, ui design (google design system)

import - dart keywords to include external libraries

package:flutter/ - refers to material package that comes w/flutter widgets

this is essential for building flutter apps w/ standard UI.
*/

void main (){
  runApp(const MyApp());
}

/*

Entry point of the flutter app
void main () - main function, starting point of any dart program.

runApp() flutter function that initializes the app and attaches the rood widget
(MyApp) to the screen

const MyApp() - creates an instance of the MyAPp widget, marked const for
compile- time optimization(immutable configuration)


*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override//indicates this method overrides StatelessWidget build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DRAGON BALL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Hello Flutter App'),
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('dragon.jpg',
              width: 650,
              height: 650,
            ),
            const SizedBox(height:20),
            const Text(
              'DRAGON BALL SUPER',
              style: TextStyle(
                fontSize: 24,
                  fontWeight: FontWeight.bold,
              ),
            ),
              const SizedBox(height: 10),

            const Text ('Dragon Ball tells the tale of a young warrior by the name of '
                'Son Goku, a young peculiar boy with a tail who embarks on a quest to '
                'become stronger and learns of the Dragon Balls, when, '
                'once all 7 are gathered, grant any wish of choice.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )

            )

          ],
        ),
      ),
    );
  }
}


/*
defined as the root widget ( main container) of the app

class MyApp extends StatelessWidget - MyApp is a custom class thats extends stateless

statelessWidget- base class for widgets that do not hold mutable state

const MyApp({super.key}); - constructor super.key passes an optional key to the base class

key uniquely identify widgets tree

const - enures immutable constructor




MetrialApp
- sets up app structure: navigation,themes, home screen
- title - visible in the task switcher
- them - ThemeData(primarySwatch: colors.blue) sets primary color palette
- home: const MyHomePage() sets an initial screen
* */