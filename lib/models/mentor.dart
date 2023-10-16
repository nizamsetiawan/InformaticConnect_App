class Mentor {
  final String name;
  final String category;

  Mentor({
    required this.name,
    required this.category,
  });
}

final List<Mentor> mentorList = [
  Mentor(name: 'Laravel', category: 'Back End'),
  Mentor(name: 'Node.js', category: 'Back End'),
  Mentor(name: 'React', category: 'Front End'),
  Mentor(name: 'Vue.js', category: 'Front End'),
  Mentor(name: 'Kotlin', category: 'Mobile'),
  Mentor(name: 'Flutter', category: 'Mobile'),
];