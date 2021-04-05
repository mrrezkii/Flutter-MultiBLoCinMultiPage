import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc_demo/bloc/color_bloc.dart';
import 'package:multibloc_demo/bloc/counter_bloc.dart';
import 'package:multibloc_demo/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(Colors.pink),
        ),
        BlocProvider<CounterBloc>(create: (context) => CounterBloc(0))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
