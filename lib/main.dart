import 'package:dash/cubit/cubit.dart';
import 'package:dash/cubit/state.dart';
import 'package:dash/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0.4),
      // statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return BlocProvider(
      create: (context) => Cubithomefood(),
      child: BlocConsumer<Cubithomefood, Statemomfood>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
          theme: ThemeData(
            //textTheme: TextTheme(body1: TextStyle(fontFamily: "Jana")),
            primarySwatch: Colors.deepOrange,
            scaffoldBackgroundColor: Colors.white,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                elevation: 7, backgroundColor: Colors.white),
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.deepOrange)),
          ),
          darkTheme: ThemeData(
            primarySwatch: Colors.cyan,
            scaffoldBackgroundColor: Colors.grey[600],
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.white,
                elevation: 7,
                backgroundColor: Colors.grey[400]),
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.grey[400],
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black)),
          ),
          themeMode: ThemeMode.light,
        ),
      ),
    );
  }
}
