import 'package:flutter/material.dart';
import 'package:tictacto/game_screen.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tic Tac Toe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.emoji_people,
                color: Colors.blue,
              ),
            ),
            title: const Text(
              "TicTacToe",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: const SelectionScreenMain(),
        ));
  }
}

class SelectionScreenMain extends StatefulWidget {
  const SelectionScreenMain({super.key});

  @override
  State<SelectionScreenMain> createState() => _SelectionScreenMainState();
}

class _SelectionScreenMainState extends State<SelectionScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Select play mode"),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(
                          playMode: 'Human',
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Human",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(
                          playMode: 'AI',
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "AI",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
