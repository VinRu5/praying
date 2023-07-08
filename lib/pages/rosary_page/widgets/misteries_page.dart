import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
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
  Widget build(BuildContext context) => Column(
        children: [
          Text(widget.misteries.title),
          FilledButton(
            onPressed: () => context.read<RosaryCubit>().getLitany(),
            child: Text("litanie"),
          ),
        ],
      );
}
