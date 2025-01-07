import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/utils/colors_manager.dart';
import 'package:untitled2/feature/view/login_screen.dart';
import 'feature/viewmodels/login/login_cubit.dart';
import 'feature/viewmodels/product/product_cubit.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => ProductCubit()..fetchProductGroups()),
    ],
    child :MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.primaryColor),
        primaryColor: ColorsManager.primaryColor,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}


