// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:how_much/domain/transaction.dart';

class History {
  final String label;

  final DateTime date;

  int amount = 0;

  List<Transaction> transactions;

  History({
    required this.label,
    required this.date,
    required this.amount,
    required this.transactions,
  });

  calculate(Transaction transaction) {
    print(transaction.type);
    if (transaction.isExpense()) {
      amount -= transaction.value;
    } else {
      amount += transaction.value;
    }
  }
}
