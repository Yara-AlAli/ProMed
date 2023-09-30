import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:promed_test/Constants/Colors.dart';

class NavBtn extends StatefulWidget {
  final String text;
  final bool Current;
  final void onPressed;
  const NavBtn(this.Current, this.text, this.onPressed, {super.key});

  @override
  State<NavBtn> createState() => _NavBtnState();
}

class _NavBtnState extends State<NavBtn> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed) || widget.Current) {
              return Colors.black;
            }
            return Colors.grey;
          },
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
            (states) => Colors.grey.withAlpha(10)),
      ),
      onPressed: () => widget.onPressed,
      child: Text(
        widget.text,
      ),
    );
  }
}

class ImageBtn extends StatefulWidget {
  final String ImagePath;
  final void onPressed;
  const ImageBtn(this.ImagePath, this.onPressed, {super.key});

  @override
  State<ImageBtn> createState() => _ImageBtnState();
}

class _ImageBtnState extends State<ImageBtn> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => widget.onPressed,
        child: Image(image: AssetImage(widget.ImagePath)));
  }
}

class UnderlinedTextBtn extends StatefulWidget {
  final String text;
  final void onPressed;
  const UnderlinedTextBtn(this.text, this.onPressed, {super.key});

  @override
  State<UnderlinedTextBtn> createState() => _UnderlinedTextBtnState();
}

class _UnderlinedTextBtnState extends State<UnderlinedTextBtn> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class ProfileBtn extends StatefulWidget {
  final String text;
  final bool Current;
  final void onPressed;
  const ProfileBtn(this.Current, this.text, this.onPressed, {super.key});

  @override
  State<ProfileBtn> createState() => _ProfileBtnState();
}

class _ProfileBtnState extends State<ProfileBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: widget.Current
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: text),
              ),
            )
          : BoxDecoration(),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed) || widget.Current) {
                return Colors.black;
              }
              return Colors.grey;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
              (states) => Colors.grey.withAlpha(10)),
        ),
        onPressed: () => widget.onPressed,
        child: Column(
          children: [
            Text(
              widget.text,
            ),
          ],
        ),
      ),
    );
  }
}

class MyTitle extends StatefulWidget {
  final String text;
  const MyTitle(this.text, {super.key});

  @override
  State<MyTitle> createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
