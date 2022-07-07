import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:heatandfire/screens/mobile/home.dart';
import 'package:heatandfire/screens/web/index_page.dart';

class DefineRootPage extends StatelessWidget {
  const DefineRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: kIsWeb ? IndexWebPage() : Home(),
    );
  }
}
