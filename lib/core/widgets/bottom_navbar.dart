import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Color homeColor;
  final Color calendarColor;
  final Color favoriteColor;
  final Color editColor;
  final Color profileColor;

  final VoidCallback? onHomeTap;
  final VoidCallback? onCalendarTap;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onEditTap;
  final VoidCallback? onProfileTap;

  const CustomBottomNavBar({
    super.key,
     this.onHomeTap,
     this.onCalendarTap,
     this.onFavoriteTap,
     this.onEditTap,
     this.onProfileTap,
    this.homeColor = Colors.grey,
    this.calendarColor = Colors.grey,
    this.favoriteColor = Colors.grey,
    this.editColor = Colors.grey,
    this.profileColor = Colors.grey,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_rounded, homeColor, onHomeTap ?? () {}),
          _buildNavItem(Icons.calendar_today_outlined, calendarColor, onCalendarTap ?? () {}),
          _buildNavItem(Icons.favorite_rounded, favoriteColor, onFavoriteTap ?? () {}),
          _buildNavItem(Icons.edit_outlined, editColor, onEditTap ?? () {}),
          _buildNavItem(Icons.person_outline_rounded, profileColor, onProfileTap ?? () {}),
        ],
      ),
    );
  }
  Widget _buildNavItem(IconData icon, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Icon(
          icon,
          size: 28,
          color: color,
        ),
      ),
    );
  }
}