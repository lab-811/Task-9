import 'package:flutter/material.dart';
import 'package:mobile_lab9/Weather.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                button: TextStyle(
                  color: Colors.white,
                ),
              ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Weather> _weatherForecast = [
    Weather(
      id: 'w1',
      day: 'Friday',
      temperature: "6 \u2109",
      icon: Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 55,
      ),
    ),
    Weather(
      id: 'w2',
      day: 'Saturday',
      temperature: "5 \u2109",
      icon: Icon(Icons.wb_sunny),
    ),
    Weather(
      id: 'w3',
      day: 'Sunday',
      temperature: "22 \u2109",
      icon: Icon(Icons.wb_sunny),
    ),
    Weather(
      id: 'w4',
      day: 'Monday',
      temperature: "15 \u2109",
      icon: Icon(Icons.wb_sunny),
    ),
    Weather(
      id: 'w5',
      day: 'Tuesday',
      temperature: "10 \u2109",
      icon: Icon(Icons.wb_sunny),
    ),
    Weather(
      id: 'w6',
      day: 'Wednesday',
      temperature: "9 \u2109",
      icon: Icon(Icons.wb_sunny),
    ),
    Weather(
      id: 'w7',
      day: 'Thursday',
      temperature: "11 \u2109",
      icon: Icon(Icons.wb_sunny),
    ),
  ];

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Weather Forecast',
          style:
              TextStyle(fontSize: 20 * MediaQuery.of(context).textScaleFactor)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final PreferredSizeWidget appBar = _buildAppBar();
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.06,
                margin: EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 10,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.white),
                      hintText: 'Enter City Name',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15)),
                ),
              ),
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Murmansk Oblast, RU',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Friday, Mar 20, 2020',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ],
                ),
              ),
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.22,
                margin: EdgeInsets.only(left: 75, top: 45),
                child: ListTile(
                  leading: Icon(
                    Icons.wb_sunny,
                    size: 90,
                    color: Colors.white,
                  ),
                  title: Text(
                    '14 \u2109',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                  subtitle: Text(
                    'LIGHT SNOW',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ),
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                            size: 45,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '5',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            'km/hr',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                            size: 45,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '3',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            '%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                            size: 45,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '20',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            '%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 5.0),
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.25,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _weatherForecast
                      .map(
                        (wf) => Card(
                          color: Colors.white38,
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 5,
                          ),
                          child: Container(
                            width: 210,
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  wf.day,
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      wf.temperature,
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Colors.white,
                                      size: 55,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
