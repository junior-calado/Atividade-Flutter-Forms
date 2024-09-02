import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Center(
            child: Text('Nenhuma transação adicionada ainda!'),
          )
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              return Card(
                child: ListTile(
                  title: Text(transactions[index]['title']),
                  subtitle: Text('R\$ ${transactions[index]['amount'].toStringAsFixed(2)}'),
                ),
              );
            },
          );
  }
}
