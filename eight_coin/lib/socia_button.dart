import 'package:eight_coin/pallate_color.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;

  const SocialButton({
    Key? key,
  required this.iconPath,
  required this.label,
  required this.horizontalPadding,
  }) : super(key: key);

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
     final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );

    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.g_mobiledata, 
      weight: 25,
      color:Pallete.gradient3),
      label: Text(widget.label, style: const TextStyle(
        color: Pallete.gradient2,
        fontSize: 17,
      ),
    ),
    style: TextButton.styleFrom(
      padding:  EdgeInsets.symmetric(vertical: 20,
      horizontal: widget.horizontalPadding),
      side: const BorderSide(width: 1, color: Pallete.gradient2),
      shape: shape,
    ),
    );
  }
}