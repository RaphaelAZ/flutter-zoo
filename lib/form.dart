import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterZooForm extends StatefulWidget {
  const FlutterZooForm({super.key});

  @override
  State<FlutterZooForm> createState() => _FlutterZooFormState();
}

class _FlutterZooFormState extends State<FlutterZooForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.grey.shade200,
                width: 300,
                height: 400,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 20,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Entrez votre nom'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Entrez une valeur';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Entrez votre prénom'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Entrez une valeur';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Entrez votre prénom'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Entrez une valeur';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Entrez votre adresse'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Entrez une valeur';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Chargement')),
                            );
                          }
                        },
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty<Color>.fromMap(<WidgetStatesConstraint, Color>{
                            WidgetState.focused: Colors.blueAccent,
                            WidgetState.pressed | WidgetState.hovered: Colors.blue,
                            WidgetState.any: Colors.yellow.shade500,
                          }),
                          backgroundColor: WidgetStateProperty<Color>.fromMap(<WidgetStatesConstraint, Color>{
                            WidgetState.any: Colors.green.shade500,
                          }),
                        ),
                        child: const Text('Valider'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}