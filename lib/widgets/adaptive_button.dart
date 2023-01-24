import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  const AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ))
        : TextButton(
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                foregroundColor: Theme.of(context).primaryColor),
            onPressed: handler,
            child: Text(text));
  }
}
