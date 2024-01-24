class Dataa {
  final int? id; // Nullable id for database auto-increment
  final String title;
  final String organization;
  final String technology;
  final String projectSummary;
  final int estimateTime;
  final int projectMoney;
  final String date;// New field for money offered

  Dataa({
    this.id,
    required this.title,
    required this.organization,
    required this.technology,
    required this.projectSummary,
    required this.estimateTime,
    required this.projectMoney, // Initialize moneyOffered in the constructor
    required this.date, // Initialize moneyOffered in the constructor
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'postedBy': organization,
      'profile': technology,
      'description': projectSummary,
      'estimateTime': estimateTime,
      'moneyOffered': projectMoney, // Include moneyOffered in the map
      'date': date, // Include moneyOffered in the map
    };
  }
}