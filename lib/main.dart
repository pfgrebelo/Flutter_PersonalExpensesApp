import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

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

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Supermarket',
      amount: 23.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses App'),
        ),
        body: Column(
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
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Add Transaction'),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.purple),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: transactions
                  .map(
                    (tx) => Card(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '€${tx.amount}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tx.title.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                DateFormat('E, dd MMM, yyyy').format(tx.date),
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ));
  }
}
