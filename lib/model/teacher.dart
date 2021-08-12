class Teacher {
  final String techId;
  final String techName;
  final List<String> techdesig;

  Teacher(
      {required this.techId, required this.techName, required this.techdesig});

  factory Teacher.fromJson(Map<String, dynamic> tecdata) {
    var desigdata = tecdata['desig'];
    List<String> desigList = desigdata.cast<String>();
    return new Teacher(
        techId: tecdata['id'],
        techName: tecdata['name'],
        techdesig: desigList,
        );
  }
}
