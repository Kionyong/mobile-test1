import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Row(
        children: [
          /// SIDEBAR
          Container(
            width: 220,
            color: const Color(0xFF5A5A5A),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'mini Quiz\nDashboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _sideItem('Dashboard', true),
                _sideItem('Category'),
                _sideItem('Levels'),
                _sideItem('Questions'),
                _sideItem('Answers'),
                _sideItem('Users'),
                _sideItem('Results'),
              ],
            ),
          ),

          /// MAIN CONTENT
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Home > Dashboard',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 6),
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  const SizedBox(height: 16),

                  /// STATS
                  Row(
                    children: const [
                      Expanded(
                        child: _StatCard(
                          title: 'Total Users',
                          value: '25',
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          title: 'Total Quizzes',
                          value: '20',
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          title: 'Average Score',
                          value: '80%',
                          color: Colors.purple,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          title: 'Completion Rate',
                          value: '85%',
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// TABLE + FAV
                  Expanded(
                    child: Row(
                      children: [
                        /// RECENT QUIZ
                        Expanded(
                          flex: 2,
                          child: _card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Recent Quiz Attempts',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(),
                                _tableHeader(),
                                _tableRow(
                                    'Math', 'Easy', Colors.green, 'Active'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),

                        /// FAVORITE TOPIC
                        Expanded(
                          child: _card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Fav Topic',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text('General knowledge'),
                                  trailing: Text('10'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ---------- Components ----------

Widget _sideItem(String title, [bool active = false]) {
  return Container(
    color: active ? Colors.black26 : Colors.transparent,
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: active ? Colors.green : Colors.white,
        ),
      ),
    ),
  );
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}

Widget _card({required Widget child}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: child,
  );
}

Widget _tableHeader() {
  return Row(
    children: const [
      Expanded(child: Text('Topic', style: TextStyle(fontWeight: FontWeight.bold))),
      Expanded(child: Text('Level', style: TextStyle(fontWeight: FontWeight.bold))),
      Expanded(child: Text('Status', style: TextStyle(fontWeight: FontWeight.bold))),
    ],
  );
}

Widget _tableRow(String topic, String level, Color c, String status) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      children: [
        Expanded(child: Text(topic)),
        Expanded(child: Text(level)),
        Expanded(
          child: Text(
            status,
            style: TextStyle(color: c, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
