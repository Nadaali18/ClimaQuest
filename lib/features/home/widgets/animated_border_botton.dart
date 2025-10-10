import 'package:flutter/material.dart';
import 'dart:math';
import 'package:clima_quest/core/helpers/colors.dart';

class AnimatedBorderButton extends StatefulWidget {
  final String text;
  final double borderRadius;
  final double strokeWidth;
  final double? paddingHorizontal;
  final double? paddingVertical;

  const AnimatedBorderButton({
    super.key,
    required this.text,
    this.borderRadius = 40, 
    this.strokeWidth = 3,
    this.paddingHorizontal,
    this.paddingVertical,
  });

  @override
  State<AnimatedBorderButton> createState() => _AnimatedBorderButtonState();
}

class _AnimatedBorderButtonState extends State<AnimatedBorderButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stroke = widget.strokeWidth;
    return CustomPaint(
      foregroundPainter: _AnimatedBorderPainter(
        animation: controller,
        borderRadius: widget.borderRadius, 
        strokeWidth: stroke,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: (widget.paddingHorizontal ?? 70) + stroke,
          vertical: (widget.paddingVertical ?? 10) + stroke,
        ),
        
        decoration: BoxDecoration(
          gradient: AppColors.buttonGradient,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _AnimatedBorderPainter extends CustomPainter {
  final Animation<double> animation;
  final double borderRadius;
  final double strokeWidth;

  _AnimatedBorderPainter({
    required this.animation,
    required this.borderRadius,
    this.strokeWidth = 3,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final rrect = RRect.fromRectAndRadius(
      rect.deflate(strokeWidth / 2),
      Radius.circular(borderRadius),
    );

    final shader = SweepGradient(
      colors: [AppColors.wh, const Color.fromARGB(255, 127, 32, 144), AppColors.wh],
      stops: [0.0, 0.5, 1.0],
      transform: GradientRotation(animation.value * 2 * pi),
    ).createShader(rect);

    final paint = Paint()
      ..shader = shader
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant _AnimatedBorderPainter oldDelegate) =>
      oldDelegate.animation != animation ||
      oldDelegate.borderRadius != borderRadius ||
      oldDelegate.strokeWidth != strokeWidth;
}
