
import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  const Counter({ Key? key }) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    print('render whole widget');
    final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    return Center(
      child: Column(
        children: [
          Consumer<CounterProvider>(
            builder: (context, value, child) {
              return Text('${value.counter}', style: TextStyle(fontSize: 32));
            },
          ),
          FloatingActionButton(
            onPressed: (){
              counterProvider.incrementCounter();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (){
              counterProvider.decrementCounter();
            },
            child: Text('-',style: TextStyle(fontSize: 32),),
          )
        ]
      ),
    );
  }
}