// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/counter_provider.dart';
import 'package:flutter_provider/screens/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp
          (
            home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Provider'),
            ),
            body: Counter(),
          ),
          )
    );
  }
}