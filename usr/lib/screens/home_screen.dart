import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/wireframe_placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const WireframePlaceholder(
                      width: 40,
                      height: 40,
                      shape: BoxShape.circle,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 14,
                          color: Colors.grey[300],
                        ),
                        const SizedBox(height: 6),
                        Container(
                          width: 80,
                          height: 12,
                          color: Colors.grey[200],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const WireframePlaceholder(
                  height: 150,
                  width: double.infinity,
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 14,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 8),
                Container(
                  width: 200,
                  height: 14,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildActionPlaceholder(),
                    _buildActionPlaceholder(),
                    _buildActionPlaceholder(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildActionPlaceholder() {
    return Container(
      width: 60,
      height: 24,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
