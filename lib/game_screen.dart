import 'package:flutter/material.dart';
import 'package:tictacto/selection_screen.dart';

class GameScreen extends StatelessWidget {
  final String playMode;
  const GameScreen({super.key, required this.playMode});

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
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectionScreen(),
                  ),
                );
              },
            ),
            title: const Text(
              "TicTacToe",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: GameScreenMain(
            playMode: playMode,
          ),
        ));
  }
}

class GameScreenMain extends StatefulWidget {
  final String playMode;
  const GameScreenMain({super.key, required this.playMode});

  @override
  State<GameScreenMain> createState() => _GameScreenMainState();
}

class _GameScreenMainState extends State<GameScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.playMode),
        ],
      ),
    );
  }
}
