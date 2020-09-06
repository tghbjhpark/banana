import 'package:flutter/material.dart';

class BibleChapter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new BibleChapterState();
}

class BibleChapterState extends State<BibleChapter> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.blue,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      '창세기',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  LinearProgressIndicator(
                    value: num / 50,
                  ),
                ],
              ),
            ),
            /*3*/
            Text(num.toString() + '/50'),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          num++;
        });
      },
    );
  }
}
