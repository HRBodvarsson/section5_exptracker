import 'package:flutter/material.dart';

import 'package:section5_exptracker/models/expense.dart';

import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                //Text('\kr.${expense.amount.toStringAsFixed(0)}\.-'),
                Text(
                    'kr.${NumberFormat('#,##0', 'de_DE').format(expense.amount)}.-'),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.access_alarms),
                    const SizedBox(width: 8),
                      Text(
                        DateFormat('HH:mm').format(expense.date)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
