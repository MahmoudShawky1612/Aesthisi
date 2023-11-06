import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;

  HoverButton({
    required this.onPressed,
    required this.child,
    this.style,
  });

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton>
    with SingleTickerProviderStateMixin {
  bool _isHovering = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() => _isHovering = true);
        _animationController.forward();
      },
      onExit: (event) {
        setState(() => _isHovering = false);
        _animationController.reverse();
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return ElevatedButton(
            onPressed: widget.onPressed,
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _isHovering
                    ? Color.fromARGB(230, 255, 255, 255)
                    : Color.fromARGB(230, 255, 255, 255),
              ),
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: widget.child,
              ),
            ),
            style: widget.style?.merge(
              ElevatedButton.styleFrom(
                primary: _isHovering
                    ? Color.fromARGB(255, 46, 143, 223)
                    : Color.fromARGB(255, 16, 125, 179),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
