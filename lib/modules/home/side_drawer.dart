import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/drawer_Item.dart';
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo and Close Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Mass",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 24),
                        ),
                        TextSpan(
                          text: "ar",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              SizedBox(height: 20),

              // Balance and Points
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Balance", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Text("\$809,87",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green)),
                    ],
                  ),
                  Container(height: 40, width: 1, color: Colors.grey.shade300),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My Reward Point", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Text("800 Points",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.orange)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Menu Items
              DrawerItem(icon: Icons.dashboard, label: "Dashboard"),
              DrawerItem(icon: Icons.person_outline, label: "Become Seller"),
              DrawerItem(icon: Icons.help_outline, label: "Help Center"),
              DrawerItem(icon: Icons.category_outlined, label: "Categories"),
              DrawerItem(icon: Icons.shopping_bag_outlined, label: "All Products"),
              DrawerItem(icon: Icons.new_releases_outlined, label: "New Release"),
              DrawerItem(icon: Icons.campaign_outlined, label: "Promotion"),
              DrawerItem(icon: Icons.settings_outlined, label: "Settings"),

              Spacer(),

              // Logout
              DrawerItem(icon: Icons.logout, label: "Logout"),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}