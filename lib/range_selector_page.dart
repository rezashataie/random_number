import 'package:flutter/material.dart';
import 'package:random_number/range_selector_form.dart';
import 'package:random_number/randomizer_page.dart';

class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RangeSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RandomizerPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
