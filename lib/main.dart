import 'package:accelerhealth/view/home_view.dart';
import 'package:accelerhealth/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeViewmodel()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budgit',
      theme: ThemeData(
        fontFamily: "Caros",
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
