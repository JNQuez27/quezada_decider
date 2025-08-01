import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Decider App"),
        backgroundColor: Colors.pinkAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.01),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.shopping_bag,
                color: Colors.cyan,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.00),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.history,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                  "Decisions Left: ##"
              ),
                const SizedBox(
                    height: 20
              ),
              Spacer(),
              _buildQuestionForm(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  "Account Type: Free"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Should I go to school?",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              left: 30.0,
              right: 30.0
            ),
          child: TextField(
            decoration: InputDecoration(
              helperText: "Enter a question",
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print('clicked');
          },
          child: const Text("Ask"),
        ),
      ],
    );
  }
}
