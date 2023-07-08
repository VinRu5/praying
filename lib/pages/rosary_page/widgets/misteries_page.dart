import 'package:flutter/material.dart';
import 'package:praying/models/rosary/mysteries.dart';

class MisteriesPage extends StatefulWidget {
  final Misteries misteries;

  const MisteriesPage({
    required this.misteries,
    super.key,
  });

  @override
  State<MisteriesPage> createState() => _MisteriesPageState();
}

class _MisteriesPageState extends State<MisteriesPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
