import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Olive\'s Restaurants",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                "Ohio, Columbus",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text("3051"),
        ],
      )
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(color, Icons.call, "CALL"),
            _buildButtonColumn(color, Icons.near_me, "ROUTE"),
            _buildButtonColumn(color, Icons.share, "SHARE"),
          ],
      )
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        'A quality and relaxing rural country pub, run by award winning owners, '
        'The building and decor are charming and rustic, with elegant modern touches '
        'A daily menu, all freshly prepared in the pub kitchen, includes fresh fish, pies, steaks and chef\'s daily specials with main course prices ranging from £11.50 - £19.50.'
        'Conveniently located on Chocolate Avenue, directly across from the Hershey Story Museum',
        style: TextStyle(
          fontFamily: "OpenSans",
          fontSize: 17.0,
        ),
        softWrap: true,
      )
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Olives Restaurants",
            ),
          ),
              body: ListView(
          children: [
            Image.asset(
              'images/resImg.jpg',
              width: 600.0,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
        ],
      ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData iconData, String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        iconData,
        color: color,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
    ],
  );
}