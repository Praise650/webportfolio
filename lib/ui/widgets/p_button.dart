import 'package:flutter/material.dart';
import '../../utils/style/text_style.dart';
class PButton extends StatelessWidget {
  final String buttonTitle;
  final bool isIcon;
  final IconData? icon;
  final void Function()? onPressed;
  const PButton({
    required this.buttonTitle,
    this.onPressed,
    this.isIcon = false,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.transparent,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle.toUpperCase(),
              style: lightTextStyle.copyWith(fontSize: 13),
            ),
            if(isIcon)
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Icon(icon, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
