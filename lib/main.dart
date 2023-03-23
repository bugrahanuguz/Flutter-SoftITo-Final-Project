import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softito_final_project/viewmodel/homepage_view_model.dart';
import 'package:softito_final_project/viewmodel/login_view_model.dart';
import 'package:softito_final_project/viewmodel/nutritions_view_model.dart';

import 'package:softito_final_project/viewmodel/reset_password.dart';

import 'package:softito_final_project/viewmodel/users_view_model.dart';
import 'package:softito_final_project/views/home_page.dart';
import 'package:softito_final_project/views/login_page.dart';
import 'package:softito_final_project/views/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NutritionViewModel()),
        ChangeNotifierProvider(create: (context) => UserViewModel()),
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
        ChangeNotifierProvider(create: (context) => HomepageViewModel()),

        ChangeNotifierProvider(create: (context) => ResetPasswordViewModel())

        ChangeNotifierProvider(create: (context) => SearchViewModel()),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );
  }
}
