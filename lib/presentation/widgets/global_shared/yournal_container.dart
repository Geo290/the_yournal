import 'package:flutter/material.dart';
import 'package:yournal/config/themes/yournal_themes.dart';

class YournalContainer extends StatelessWidget {
  final Widget? child;
  final PreferredSizeWidget? appBar;
  const YournalContainer({super.key, this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 5.0,
            stops: const <double>[0.0, 0.9],
            colors:<Color>[YournalThemes.selectColor('primary'), YournalThemes.selectColor('secondary')]
          )
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}