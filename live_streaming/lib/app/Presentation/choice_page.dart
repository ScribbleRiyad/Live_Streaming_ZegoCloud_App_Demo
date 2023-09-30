import 'package:flutter/material.dart';
import 'package:live_streaming/app/Presentation/Home/home_screen.dart';
import 'package:live_streaming/app/Presentation/youtube_player.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Center(
            child: Column(

                children: [




                  const SizedBox(
                    height: 200,
                  ),



              ElevatedButton(

                child: const Text('YouTube Player'),
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(

                  child: const Text('Live Streaming Video Call'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                    ),
                    ));
                  }
              )


            ]),
          ),
        ));
  }
}
