import 'package:flutter/material.dart';
import 'package:tech/core/components/theme_data_comp.dart';
import 'package:tech/routes/my_route.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final MyRoute _myRoute = MyRoute();


  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online shop',
        theme: ThemeComp.materialTheme,
        initialRoute: "/",
        onGenerateRoute: _myRoute.onGenerateRoute,
      );
}
