import 'dart:math';

import 'package:flutter/cupertino.dart';

class WidthLimitComponent extends StatelessWidget {
  final Widget child;

  const WidthLimitComponent({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Center(
          child: SizedBox(
                width: min(constraints.maxWidth, 1024),
                child: child,
              ),
        ));
  }
}
