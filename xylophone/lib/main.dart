import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}
// widget.color
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();

  // void soundPlay(Xylokey) async{
  //   await player.play(AssetSource('note$Xylokey.wav'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Xylophone"),
        ),
        backgroundColor: Color.fromARGB(255, 231, 246, 246),
      ),
      body: Center(
        child: Column(
          // do-re-mi-fa-so-la-ti-do
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Xylobar(Xylokey: "1", barColor: Colors.red, playFun: (){ soundPlay("1");} ,),
            // Xylobar(Xylokey: "2", barColor: Colors.blue, playFun: (){ soundPlay("2");} ,),
            // Xylobar(Xylokey: "3", barColor: Colors.yellow, playFun: (){ soundPlay("3");} ,),
            // Xylobar(Xylokey: "4", barColor: Colors.green, playFun: (){ soundPlay("4");} ,),
            // Xylobar(Xylokey: "5", barColor: Colors.amber, playFun: (){ soundPlay("5");} ,),
            // Xylobar(Xylokey: "6", barColor: Colors.red, playFun: (){ soundPlay("6");} ,),
            // Xylobar(Xylokey: "7", barColor: Colors.red, playFun: (){ soundPlay("7");} ,),
            GestureDetector(
                onTap: () async {
                  await player.play(AssetSource("note1.wav"));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 244, 76, 54),
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  height: 95,
                  width: 360,
                  child: const Text(""),
                )
                ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 139, 54),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              width: 345,
              height: 95,
              child: GestureDetector(
                  onTap: () async {
                    await player.play(AssetSource("note2.wav"));
                  },
                  child: const Text("")),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 225, 54),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              width: 330,
              height: 95,
              child: GestureDetector(
                  onTap: () async {
                    await player.play(AssetSource("note3.wav"));
                  },
                  child: const Text("")),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 26, 162, 54),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              width: 315,
              height: 95,
              child: GestureDetector(
                  onTap: () async {
                    await player.play(AssetSource("note4.wav"));
                  },
                  child: const Text("")),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 25, 84, 81),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              width: 300,
              height: 95,
              child: GestureDetector(
                  onTap: () async {
                    await player.play(AssetSource("note5.wav"));
                  },
                  child: const Text("")),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 54, 174, 244),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              width: 285,
              height: 95,
              child: GestureDetector(
                  onTap: () async {
                    await player.play(AssetSource("note6.wav"));
                  },
                  child: const Text(
                    "",
                  )),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 212, 34, 221),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              width: 270,
              height: 95,
              child: GestureDetector(
                  onTap: () async {
                    await player.play(AssetSource("note7.wav"));
                  },
                  child: const Text("")),
            ),
          ],
        ),
      ),
    );
  }
}

// class Xylobar extends StatelessWidget {
//   Xylobar({super.key, required this.Xylokey, required this.barColor, required this.playFun});

//   String Xylokey;
//   Color barColor;
//   VoidCallback playFun;
//   //  int width;


//   final player = AudioPlayer();

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: playFun,
//         child: Container(
//           decoration: const BoxDecoration(
//               color: Color.fromARGB(255, 244, 76, 54),
//               borderRadius: BorderRadius.all(Radius.circular(7))),
//           height: 95,
//           width: 360,
//           child: const Text(""),
//         ));
//   }
// }

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 244, 76, 54),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          height: 95,
          width: 360,
          child: const Text(""),
        ));
  }
}