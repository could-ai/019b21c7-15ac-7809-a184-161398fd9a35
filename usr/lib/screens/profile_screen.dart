import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/wireframe_placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const WireframePlaceholder(
            width: 100,
            height: 100,
            shape: BoxShape.circle,
          ),
          const SizedBox(height: 16),
          Container(
            width: 150,
            height: 24,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 8),
          Container(
            width: 200,
            height: 14,
            color: Colors.grey[200],
          ),
          const SizedBox(height: 32),
          _buildSectionHeader('Account'),
          _buildListTile(Icons.person_outline, 'Personal Information'),
          _buildListTile(Icons.security_outlined, 'Security'),
          _buildListTile(Icons.notifications_outlined, 'Notifications'),
          const SizedBox(height: 24),
          _buildSectionHeader('Preferences'),
          _buildListTile(Icons.language, 'Language'),
          _buildListTile(Icons.dark_mode_outlined, 'Dark Mode'),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red),
            ),
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
