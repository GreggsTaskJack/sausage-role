import 'package:flutter/material.dart';

class QuantityControls extends StatelessWidget {
  final int amount;
  final VoidCallback onReduce;
  final VoidCallback onAdd;

  const QuantityControls({required this.amount, required this.onReduce, required this.onAdd, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onReduce, icon: const Icon(Icons.linear_scale)),
        Text(amount.toString()),
        IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
      ],
    );
  }
}
