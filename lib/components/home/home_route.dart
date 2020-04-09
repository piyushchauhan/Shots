import 'package:flutter/material.dart';
import 'package:shots/components/core/button.dart';
import 'package:shots/components/core/page_template.dart';
import 'package:shots/components/core/spacing.dart';
import 'package:shots/styles/values.dart';
import 'package:shots/utils/strings.dart';
import 'package:shots/utils/extensions.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _appTitle(context),
            _buttons(context),
          ],
        ),
      ).sliver(),
    ]).scaffold();
  }

  Widget _appTitle(context) => Column(
        children: <Widget>[
          Text(
            Strings.appTitle,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      );

  Widget _buttons(context) => Column(
        children: <Widget>[
          Button(text: "Start", color: Colors.indigo, width: 200.0),
          Spacing(height: Values.mainPadding),
          Button(text: "Terms", color: Colors.indigo, width: 200.0, outline: true)
        ],
      );
}
