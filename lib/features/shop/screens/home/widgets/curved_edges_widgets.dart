import 'package:flutter/material.dart';

import 'custom_curved_edges.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key, this.widget,
  });

  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CustomCurvedEdges(),
        child: widget
    );
  }
}
