import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Exercitation eiusmod ad aliquip pariatur nulla aliqua fugiat consequat Lorem. Quis sit ad non cillum enim minim dolor culpa ex Lorem exercitation duis excepteur. Commodo reprehenderit adipisicing sint minim in commodo id fugiat. Quis aliqua aute aliqua tempor ex eu veniam nulla aliqua magna fugiat est. Exercitation do fugiat aliquip consectetur enim. Sint occaecat eiusmod pariatur amet. Nostrud eiusmod elit labore elit elit labore in commodo dolor non irure.Elit in tempor commodo incididunt ullamco dolore eiusmod ut ullamco irure adipisicing cillum et. Eiusmod minim proident proident aliquip ut minim cupidatat officia duis consectetur. Do velit consectetur culpa mollit quis.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: double.infinity,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent,
                        blurRadius: 10,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Follow me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYAhBdjd5Dc183RfLQZmtTfkKt34zxUU5iEw&s',
                ),
              ],
              
            ),
          )
        ],
      ),
    );
  }
}
