import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Chillax",
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
  //Numbers
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List ansList = [];
  int ans = 1;
  int cardOne = 1, cardTwo = 2, cardThree = 3, cardFour = 4, cardFive = 5;

  //Result text
  String result = '';

  //Shuffle the numbers
  void shuffleMyanNums() {
    return numbers.shuffle();
  }

  int shuffleAnsNums() {
    numbers.shuffle();
    return numbers[0];
  }

  //Score
  int score = 0;

  //snackbar color
  Color snackBarColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Title(
          color: Colors.white,
          child: const Text("Learn Myan Num"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 30,
            height: 30,
          ),
          //TASK
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The number, $ans is...",
                style: const TextStyle(fontSize: 26),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          //CARD 1 AND CARD 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (cardOne == ans) {
                      result = "You are amazing!";
                      snackBarColor = Colors.green;
                      score += 10;
                      print("Green");
                    } else {
                      result = "You are trashhh!";
                      snackBarColor = Colors.red;
                      print("Red");
                    }

                    //ans shuffle
                    ans = shuffleAnsNums();

                    //cards shuffle
                    shuffleMyanNums();
                    cardOne = numbers[0];
                    cardTwo = numbers[1];
                    cardThree = numbers[2];
                    cardFour = numbers[3];
                    cardFive = numbers[4];
                    print(cardOne);

                    //ans shuffle ...? again?
                    ansList = [cardOne, cardTwo, cardThree, cardFour, cardFive];
                    ansList.shuffle();
                    print(ansList);
                    ans = ansList[0];

                    //Snackbar popup
                    SnackBar snackBar = SnackBar(
                      content: Text(result),
                      backgroundColor: snackBarColor,
                      duration: const Duration(milliseconds: 650),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    image: DecorationImage(
                        image: AssetImage("images/$cardOne.png")),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (cardTwo == ans) {
                      result = "You are amazing!";
                      snackBarColor = Colors.green;
                      score += 10;
                      print("Green");
                    } else {
                      result = "You are trashhh!";
                      snackBarColor = Colors.red;
                      print("Red");
                    }

                    //ans shuffle
                    ans = shuffleAnsNums();

                    //cards shuffle
                    shuffleMyanNums();
                    cardOne = numbers[0];
                    cardTwo = numbers[1];
                    cardThree = numbers[2];
                    cardFour = numbers[3];
                    cardFive = numbers[4];
                    print(cardTwo);

                    //ans shuffle ...? again?
                    ansList = [cardOne, cardTwo, cardThree, cardFour, cardFive];
                    ansList.shuffle();
                    print(ansList);
                    ans = ansList[0];

                    //Snackbar popup
                    SnackBar snackBar = SnackBar(
                      content: Text(result),
                      backgroundColor: snackBarColor,
                      duration: const Duration(milliseconds: 650),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    image: DecorationImage(
                        image: AssetImage("images/$cardTwo.png")),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          //CARD 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (cardFive == ans) {
                      result = "You are amazing!";
                      snackBarColor = Colors.green;
                      score += 10;
                      print("Green");
                    } else {
                      result = "You are trashhh!";
                      snackBarColor = Colors.red;
                      print("Red");
                    }

                    //ans shuffle
                    ans = shuffleAnsNums();

                    //cards shuffle
                    shuffleMyanNums();
                    cardOne = numbers[0];
                    cardTwo = numbers[1];
                    cardThree = numbers[2];
                    cardFour = numbers[3];
                    cardFive = numbers[4];
                    print(cardFive);

                    //ans shuffle ...? again?
                    ansList = [cardOne, cardTwo, cardThree, cardFour, cardFive];
                    ansList.shuffle();
                    print(ansList);
                    ans = ansList[0];

                    //Snackbar popup
                    SnackBar snackBar = SnackBar(
                      content: Text(result),
                      backgroundColor: snackBarColor,
                      duration: const Duration(milliseconds: 650),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    image: DecorationImage(
                        image: AssetImage("images/$cardFive.png")),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
            height: 30,
          ),
          //CARD 3 AND CARD 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (cardThree == ans) {
                      result = "You are amazing!";
                      snackBarColor = Colors.green;
                      score += 10;
                      print("Green");
                    } else {
                      result = "You are trashhh!";
                      snackBarColor = Colors.red;
                      print("Red");
                    }

                    //ans shuffle
                    ans = shuffleAnsNums();

                    //cards shuffle
                    shuffleMyanNums();
                    cardOne = numbers[0];
                    cardTwo = numbers[1];
                    cardThree = numbers[2];
                    cardFour = numbers[3];
                    cardFive = numbers[4];
                    print(cardThree);

                    //ans shuffle ...? again?
                    ansList = [cardOne, cardTwo, cardThree, cardFour, cardFive];
                    ansList.shuffle();
                    print(ansList);
                    ans = ansList[0];

                    //Snackbar popup
                    SnackBar snackBar = SnackBar(
                      content: Text(result),
                      backgroundColor: snackBarColor,
                      duration: const Duration(milliseconds: 650),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    image: DecorationImage(
                        image: AssetImage("images/$cardThree.png")),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (cardFour == ans) {
                      result = "You are amazing!";
                      snackBarColor = Colors.green;
                      score += 10;
                      print("Green");
                    } else {
                      result = "You are trashhh!";
                      snackBarColor = Colors.red;
                      print("Red");
                    }

                    //ans shuffle
                    ans = shuffleAnsNums();

                    //cards shuffle
                    shuffleMyanNums();
                    cardOne = numbers[0];
                    cardTwo = numbers[1];
                    cardThree = numbers[2];
                    cardFour = numbers[3];
                    cardFive = numbers[4];
                    print(cardFour);

                    //ans shuffle ...? again?
                    ansList = [cardOne, cardTwo, cardThree, cardFour, cardFive];
                    ansList.shuffle();
                    print(ansList);
                    ans = ansList[0];

                    //Snackbar popup
                    SnackBar snackBar = SnackBar(
                      content: Text(result),
                      backgroundColor: snackBarColor,
                      duration: const Duration(milliseconds: 650),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    image: DecorationImage(
                        image: AssetImage("images/$cardFour.png")),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          //SCORE TEXT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Beautiful Score: $score",
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //RESTART BUTTON
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      score = 0;
                    });
                  },
                  child: const Text(
                    "Restart",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
