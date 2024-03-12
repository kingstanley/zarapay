import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UnknownRoutePage extends ConsumerWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text('Unknow route');
  }
}
