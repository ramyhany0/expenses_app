import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, work }

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.category,
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
}

var V1 = Expense(
  category: Category.work,
  title: "Flutter Course",
  amount: 29.9,
  date: DateTime.now(),
);
