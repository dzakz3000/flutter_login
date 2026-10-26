import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Saya"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),

            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),

            //profile
            const Text(
              "Dzakz",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "dzakiymang@gmail.com",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 24),

            const Divider(),
            const SizedBox(height: 10),

            // opsi opsi, edit riwayat, alamat, setting
            _buildProfileMenuItem(
              icon: Icons.edit_outlined,
              title: "Edit Profil",
              onTap: () {

              },
            ),
            _buildProfileMenuItem(
              icon: Icons.history,
              title: "Riwayat",
              onTap: () {

              },
            ),
            _buildProfileMenuItem(
              icon: Icons.location_on_outlined,
              title: "Alamat",
              onTap: () {

              },
            ),
            _buildProfileMenuItem(
              icon: Icons.settings_outlined,
              title: "Pengaturan",
              onTap: () {

              },
            ),

            // garis pemisah
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),

            // logout
            _buildProfileMenuItem(
              icon: Icons.logout,
              title: "Keluar",
              textColor: Colors.red,
              iconColor: Colors.red,
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }

  // untuk hint gambar
  Widget _buildProfileMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color textColor = Colors.black87,
    Color iconColor = Colors.blueAccent,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: iconColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
      onTap: onTap,
    );
  }
}