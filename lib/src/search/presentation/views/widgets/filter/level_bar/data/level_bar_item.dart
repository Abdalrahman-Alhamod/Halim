class LevelBarItem {
  final String label;
  final Level type;

  LevelBarItem({required this.label, required this.type});
}

enum Level { all, begginer, intermediate, advanced }
