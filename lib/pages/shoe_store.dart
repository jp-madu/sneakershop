import 'package:flutter/material.dart';

class ShoeStore extends StatelessWidget {
  const ShoeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text('Nike boys, we super fly. Cope the fliest kicks here'),
          ],
        ),
      ),
    );
  }
}
