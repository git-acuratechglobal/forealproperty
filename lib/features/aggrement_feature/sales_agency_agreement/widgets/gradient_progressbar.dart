import 'package:flutter/material.dart';

class GradientProgressBar extends StatelessWidget {
  final double value; // from 0.0 to 1.0
  final double height;
  final List<Color> gradientColors;

  const GradientProgressBar({
    super.key,
    required this.value,
    this.height = 8,
    this.gradientColors = const [Color(0xFF75CBCD), Color(0xFF91D35F)],
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height / 2),
      child: Stack(
        children: [
          Container(
            height: height,
            color: Colors.grey.shade300,
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value.clamp(0.0, 1.0),
            child: Container(
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: gradientColors),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashedLine extends StatelessWidget {
  final double height;
  final Color color;

  const DashedLine({
    super.key,
    this.height = 100,
    this.color = Colors.teal,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2,
      child: SizedBox.expand(
        child: CustomPaint(
          painter: _DashedLinePainter(color: color),
        ),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;

  _DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2;

    const dashHeight = 7;
    const dashSpace = 5;
    double startY = 0;

    while (startY < size.height) {
      final endY = (startY + dashHeight).clamp(0.0, size.height);
      // draw centered in our fixed-width area
      final x = size.width / 2;
      canvas.drawLine(Offset(x, startY), Offset(x, endY), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}