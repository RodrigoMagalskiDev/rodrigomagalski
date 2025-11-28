import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/color_helper.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';

class ItemInfoContact extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const ItemInfoContact({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      height: 60,
      width: Responsive.isMobile(context) ? double.infinity : context.w(0.2),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: context.primaryColor,
          ),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title, style: TextStyle(color: context.secondaryColor)),
        subtitle: Text(
          description,
          style: TextStyle(color: context.primaryColor),
        ),
      ),
    );
  }
}
