import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class MyAppExit extends StatefulWidget {
  const MyAppExit({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<MyAppExit> createState() => _MyAppExitState();
}

class _MyAppExitState extends State<MyAppExit> {
  int? timeBackTwice;

  void setTimeBackTwice() {
    timeBackTwice = DateTime.now().millisecondsSinceEpoch;
    showSimpleNotification(
      const Text('Back twice to exit'),
      duration: const Duration(milliseconds: 1500),
      background: Colors.orange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (timeBackTwice == null) {
          setTimeBackTwice();
        } else {
          final now = DateTime.now().millisecondsSinceEpoch;
          final diff = now - timeBackTwice!;
          if (diff < 2000) {
            return true;
          } else {
            setTimeBackTwice();
          }
        }
        return false;
      },
      child: widget.child,
    );
  }
}
