import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IndexWebPage extends StatefulWidget {
  const IndexWebPage({Key? key}) : super(key: key);

  @override
  State<IndexWebPage> createState() => _IndexWebPageState();
}

class _IndexWebPageState extends State<IndexWebPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Heat and Fire',
          style: TextStyle(
              fontFamily: 'Arima',
              fontSize: 75,
              color: Color.fromARGB(255, 236, 43, 9)),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/web_bg.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(children: const []),
      ),
    );
  }
}
