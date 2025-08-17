import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const DrawerItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey.shade700),
      title: Text(label, style: GoogleFonts.poppins()),
      onTap: () {},
      dense: true,
      visualDensity: VisualDensity(horizontal: 0, vertical: -2),
    );
  }
}