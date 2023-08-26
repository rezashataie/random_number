import 'package:flutter/material.dart';
import 'package:pan2mim/randomizer_change_notifier.dart';
import 'package:pan2mim/range_selector_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>RandomizerChangeNotifier(),
      child: MaterialApp(
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}