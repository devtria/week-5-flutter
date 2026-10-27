import 'package:flutter/material.dart';

void main(){
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Dart',
      home: HomePage(),
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 143, 96, 96),
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc, color: const Color.fromARGB(255, 251, 113, 237),),
        title: Center(child: Text('Belajar Dart')),
        backgroundColor: Color.fromARGB(255, 25, 140, 255),
        actions: [
          IconButton(onPressed: () {
            print('Icon Ditekan');
          }, icon: Icon(Icons.accessibility_new),),
          IconButton(onPressed: () {
            print('Icon Ditekan 2');
          }, icon: Icon(Icons.account_balance),),
          IconButton(onPressed: () {
            print('Icon Ditekan 3');
          }, icon: Icon(Icons.account_box),),
        ],
      ),
      body: const Center(
        child: Text('Hello Mahasiswa Global Institute'),
      ),
    );
  }
}