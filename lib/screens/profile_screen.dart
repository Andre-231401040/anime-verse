import 'package:anime_verse/widgets/app_scaffold.dart';
import 'package:anime_verse/widgets/profile_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.075,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),

            // Profile
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: screenWidth * 0.138,
                    backgroundColor: Colors.white.withValues(alpha: 0.3),
                    child: CircleAvatar(
                      radius: screenWidth * 0.13,
                      backgroundImage: AssetImage(
                        'assets/images/black_clover.jpg',
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.02),

                Text(
                  'IKLC AnimeVerse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.055,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: screenHeight * 0.005),

                Text(
                  'iklcanimeverse@gmail.com',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: screenWidth * 0.035,
                  ),
                ),

                SizedBox(height: screenHeight * 0.015),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.04,
                    vertical: screenHeight * 0.009,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                  ),
                  child: Text(
                    'Member since September 2025',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.06),

            // Account Settings
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.015),

                ProfileButton(
                  icon: Icons.person_outline,
                  title: 'Change Username',
                  subtitle: 'Update your display name',
                  onTap: () {},
                ),

                SizedBox(height: screenHeight * 0.015),

                ProfileButton(
                  icon: Icons.lock_outline,
                  title: 'Change Password',
                  subtitle: 'Update your account password',
                  onTap: () {},
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.035),

            // App Information
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'App Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.015),

                ProfileButton(
                  icon: Icons.info_outline,
                  title: 'About AnimeVerse',
                  subtitle: 'Version 1.0.0',
                  onTap: () {},
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.04),

            // Logout Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.logout, size: screenWidth * 0.06),
                label: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                  backgroundColor: Colors.red.withValues(alpha: 0.8),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.07),
          ],
        ),
      ),
    );
  }
}
