import 'package:flutter/material.dart';
import 'package:random_number/randomizer_state_notifier.dart';
import 'package:random_number/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const AppWidget());
}

final randomizerProvider = StateNotifierProvider<RandomizerStateNotifier, RandomizerState>((ref) => RandomizerStateNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}
