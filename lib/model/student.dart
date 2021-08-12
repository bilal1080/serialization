class Student{
  String stdId;
  String stdName;
  int stdScore;

  Student({
    required this.stdId,
    required this.stdName,
    required this.stdScore
});

  factory Student.fromJson(Map<String,dynamic> parsedJson){
    return Student(
      stdId: parsedJson['id'],
      stdName : parsedJson['name'],
      stdScore : parsedJson ['score']
    );
  }
}