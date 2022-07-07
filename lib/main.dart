import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:heatandfire/components/define_root_page.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAXx1HBRsFKoL4SyxUZLEj5eZe4FAVd5NY',
      appId: '1:579860641795:web:63f683a0ae0784e1b83636',
      messagingSenderId: '579860641795',
      projectId: 'heat-and-fire-b675a',
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DefineRootPage(),
    );
  }
}
