import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/widgets/user_transactions.dart';

import './widgets/user_transactions.dart';

main() => runApp(const PersonalExpensesApp());

class PersonalExpensesApp extends StatelessWidget {
  const PersonalExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses App'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
