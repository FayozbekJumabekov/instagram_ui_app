import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              elevation: 0,
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              color: Colors.white,
              foregroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.black)),
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.black),
              subtitle2: TextStyle(color: Colors.grey),
              caption: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,overflow: TextOverflow.ellipsis,)

          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.grey.shade600),
              subtitle2: TextStyle(color: Colors.grey.shade600,),
              caption: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14)
          ),
          appBarTheme: AppBarTheme(
              foregroundColor: Colors.grey.shade500,
              elevation: 0,
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              color: Colors.black,
              iconTheme: IconThemeData(color: Colors.grey.shade500)),
          iconTheme: IconThemeData(
            color: Colors.grey,
          )),
      home: HomePage(),
      routes: {HomePage.id: (context) => HomePage()},
    );
  }
}
