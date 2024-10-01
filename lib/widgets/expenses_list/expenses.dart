import 'package:expenses_app/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      category: Category.work,
      title: "Flutter Course",
      amount: 29.9,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.food,
      title: "Buffulo",
      amount: 34.9,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.travel,
      title: "Hurghada",
      amount: 36.9,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("........"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("......"),
            Expanded(
              child: ListView.builder(
                itemCount: _registeredExpenses.length,
                itemBuilder: (context, index) =>
                    Text(_registeredExpenses[index].title),
              ),
            )
          ],
        ),
      ),
    );
  }
}
