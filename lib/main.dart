import 'package:fetch_date/Data.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

  final List<Dataa> DataList = [
    Dataa(
        title: 'Tea App',
        organization: 'Google',
        technology: 'Flutter Developer',
        projectSummary:
            'This is a description for Project 1. It should be a bit longer to test the truncation functionality. Lorem ipsum dolor sit amet, consectetur adipiscing elit This is a description for Project 2. It should also be a bit longer to test the truncation functionality. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        estimateTime: 20,
        projectMoney: 1000,
        date: "2024-01-24"),
    Dataa(
        title: 'Need a new website for my company',
        organization: 'Facebook',
        technology: 'Web Designer',
        projectSummary:
            'This is a description for Project 2. It should also be a bit longer to test the truncation functionality. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        estimateTime: 40,
        projectMoney: 2000,
        date: "2023-05-04"),
    Dataa(
        title: 'Bakery Chatbot',
        organization: 'Amazon',
        technology: 'Artificial Intelligence',
        projectSummary:
            'This automated communication system is developed using Python. The project file contains a python script (main.py). Talking about this chatbot, it allows the user to make them order the various types of bakery items of their own choices or the orders from the system’s random choices. At last, this chatbot shows you all your ordered items and finishes. Also, this is a simple cmd-based project which is easy to understand and use.',
        estimateTime: 120,
        projectMoney: 10000,
        date: "2022-06-18"),
    Dataa(
        title: 'ML Model',
        organization: 'Microsoft',
        technology: 'Machine Learning',
        projectSummary:
            'This automated communication system is developed using Python. The project file contains a python script (main.py). Talking about this chatbot, it allows the user to make them order the various types of bakery items of their own choices or the orders from the system’s random choices. At last, this chatbot shows you all your ordered items and finishes. Also, this is a simple cmd-based project which is easy to understand and use.',
        estimateTime: 180,
        projectMoney: 20000,
        date: "2013-10-15"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: DataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Card(
                margin: EdgeInsets.only(bottom: 2),
                child: ListTile(
                  title: Text(DataList[index].title),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(DataList[index].organization),
                      Text(DataList[index].technology),
                      Text(
                        DataList[index].projectSummary,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 20,
                child: Text(
                    Jiffy.parse(DataList[index].date.toString()).fromNow()),
              )
            ],
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
