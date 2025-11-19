import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title = '',
    this.centerTitle = false,
    this.backgroundColor = Colors.transparent,
    this.titleTextStyle,
    this.dividerColor = const Color(0xFFE0E0E0),
  }) : super(key: key);

  final String title;
  final bool centerTitle;
  final Color backgroundColor;
  final TextStyle? titleTextStyle;
  final Color dividerColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: titleTextStyle ??
                 TextStyle(
                  fontSize: 18,
                  color: Color(0xFF101A26),
                ),
          ),
          centerTitle: centerTitle,
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: dividerColor,
        ),
      ],
    );
  }
}
