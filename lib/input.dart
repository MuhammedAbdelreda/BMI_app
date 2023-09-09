import 'package:flutter/material.dart';
import 'details.dart';
import 'gender.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectGender;
  int num = 0;
  var height = 180;
  var weight = 60;
  var age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 20,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  gender(
                    onpressed: () {
                      setState(() {
                        num = 1;
                      });
                    },
                    icon: Icons.male,
                    c: num == 1
                        ? Color.fromARGB(255, 26, 42, 49)
                        : Colors.black26,
                    g: 'MALE',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  gender(
                    onpressed: () {
                      setState(() {
                        num = 2;
                      });
                    },
                    icon: Icons.female,
                    c: num == 2
                        ? const Color.fromARGB(255, 26, 42, 49)
                        : Colors.black26,
                    g: 'FEMALE',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  decoration: decor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Height'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString()),
                          const Text('cm'),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 10.0),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 20.0),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double h) {
                              setState(() {
                                height = h.round();
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  details(
                    data: weight,
                    d: 'WEIGHT',
                    icon: Icons.add,
                    icon2: Icons.remove,
                    onpressed: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onpressed2: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  details(
                    data: age,
                    d: 'AGE',
                    icon: Icons.add,
                    icon2: Icons.remove,
                    onpressed: () {
                      setState(() {
                        age++;
                      });
                    },
                    onpressed2: () {
                      setState(() {
                        age--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
