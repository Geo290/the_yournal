import 'package:flutter/material.dart';

class YournalAppbar extends StatelessWidget implements PreferredSizeWidget{
  final IconData? icon;
  final VoidCallback? onPressed;
  const YournalAppbar({super.key, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar( // Appbar
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: onPressed, 
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      // actions: <Widget>[
      //   IconButton(
      //     onPressed: (){}, 
      //     icon: Icon(icon)
      //   )
      // ],
    );
  }

  @override 
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}