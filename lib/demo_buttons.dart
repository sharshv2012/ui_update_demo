import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});

  @override
  State<StatefulWidget> createState() {
    return _demoButtonsState();
  }
}

class _demoButtonsState extends State<DemoButtons> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print('DemoButtons BUILD called');
    return Column(
      mainAxisSize: MainAxisSize.min, // it will give vertical constraint to the column.
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderstood) const Text('Awesome!'),
      ],
    );
  }
}
