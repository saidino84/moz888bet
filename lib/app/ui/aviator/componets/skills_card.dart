import 'package:flutter/material.dart';

import 'circular_progress.dart';
import 'horizontal_progress.dart';

class SkilsCardBar extends StatelessWidget {
  const SkilsCardBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(maxHeight: 250, maxWidth: 450),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white54,
          ),
        ),
        child: Column(
          children: [
            Text(
              'S k i l s to W i n ',
              style: TextStyle(color: Colors.white24),
            ),
            Divider(
              color: Colors.white54,
              height: 35.21,
            ),
            Expanded(
              child: Row(
                children: [
                  CircularProgress(50.0, Color.fromARGB(255, 218, 31, 255)),
                  CircularProgress(
                      40.25, Colors.lightBlue[800]!.withOpacity(1)),
                  CircularProgress(
                    68.24,
                    Colors.deepPurple,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white30,
              indent: 30,
              endIndent: 30,
            ),
            Expanded(
                child: Column(
              children: [
                HorizontalProgress(12.24, Color.fromARGB(255, 218, 31, 255)),
                HorizontalProgress(4.24, Colors.lightBlue[800]!.withOpacity(1)),
                HorizontalProgress(
                  51.24,
                  Colors.deepPurple,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
