import 'package:flutter/material.dart';

class WireframePlaceholder extends StatelessWidget {
  final double width;
  final double height;
  final BoxShape shape;
  final BorderRadius? borderRadius;

  const WireframePlaceholder({
    super.key,
    required this.width,
    required this.height,
    this.shape = BoxShape.rectangle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: shape,
        borderRadius: shape == BoxShape.rectangle
            ? (borderRadius ?? BorderRadius.circular(8))
            : null,
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Center(
        child: Icon(
          Icons.image_outlined,
          color: Colors.grey[400],
          size: width * 0.4,
        ),
      ),
    );
  }
}
