import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:heatandfire/models/recipe.dart';

class IndexWebPage extends StatefulWidget {
  const IndexWebPage({Key? key}) : super(key: key);

  @override
  State<IndexWebPage> createState() => _IndexWebPageState();
}

class _IndexWebPageState extends State<IndexWebPage> {
  List<Recipe> recipes = [
    Recipe.recipeOne,
    Recipe.recipeTwo,
    Recipe.recipeThree,
    Recipe.recipeFour,
    Recipe.recipeFive,
  ];

  final appBarButtonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
  );
  final appBarButtonTextStyle =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    log(size.width.toString());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          size.width >= 800
              ? Padding(
                  padding: const EdgeInsets.only(right: 50, top: 15),
                  child: ButtonBar(
                    children: [
                      ElevatedButton(
                        style: appBarButtonStyle,
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: appBarButtonTextStyle,
                        ),
                      ),
                      ElevatedButton(
                        style: appBarButtonStyle,
                        onPressed: () {},
                        child: Text(
                          'Explore',
                          style: appBarButtonTextStyle,
                        ),
                      ),
                      ElevatedButton(
                        style: appBarButtonStyle,
                        onPressed: () {},
                        child: Text(
                          'News',
                          style: appBarButtonTextStyle,
                        ),
                      ),
                      ElevatedButton(
                        style: appBarButtonStyle,
                        onPressed: () {},
                        child: Text(
                          'Member',
                          style: appBarButtonTextStyle,
                        ),
                      ),
                    ],
                  ),
                )
              : size.width <= 800
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu_book_outlined),
                    )
                  : Container(),
        ],
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/web_bg.jpg'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Heat and Fire',
              style: TextStyle(
                  fontFamily: 'Arima',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        //background
        children: <Widget>[
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/web_bg.jpg',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.black,
                  const Color.fromARGB(255, 238, 238, 238).withOpacity(0.0),
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
          //main content
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: size.width * 0.7, maxHeight: size.height * 0.8),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: size.width >= 800 ? 500 : 200,
                      childAspectRatio: 6 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: recipes.length,
                  itemBuilder: (BuildContext ctx, index) {
                    final recipe = recipes[index];
                    return Container(
                      alignment: Alignment.center,
                      child: Text(recipe.name),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
