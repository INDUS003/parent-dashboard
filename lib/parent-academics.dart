import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Needed for SystemMouseCursors

// -------------------------------------------------------------------------
// 0. UTILITY FUNCTION TO CREATE CUSTOM MATERIAL COLOR
// -------------------------------------------------------------------------
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05, .1, .2, .3, .4, .5, .6, .7, .8, .9];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 0; i < 10; i++) {
    int strengthKey = (strengths[i] * 1000).round();
    if (strengthKey < 100) strengthKey = 50;
    swatch[strengthKey] = Color.fromRGBO(r, g, b, strengths[i]);
  }
  return MaterialColor(color.value, swatch);
}

// -------------------------------------------------------------------------
// 1. VOID MAIN (THE ENTRY POINT)
// -------------------------------------------------------------------------

void main() => runApp(const SchoolManagementSystemApp());

// -------------------------------------------------------------------------
// 2. THEME AND APP CONTAINER
// -------------------------------------------------------------------------

class SchoolManagementSystemApp extends StatelessWidget {
  const SchoolManagementSystemApp({super.key});

  static const Color primaryPurple = Color(0xFF667eea);
  static const Color accentAmber = Color(0xFFFFC107);
  static const Color lightBackground = Color(0xFFF8F9FA);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academic Performance Dashboard',
      theme: ThemeData(
        primarySwatch: createMaterialColor(primaryPurple),
        primaryColor: primaryPurple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryPurple,
          primary: primaryPurple,
          secondary: accentAmber,
          background: lightBackground,
          onPrimary: Colors.white,
        ),
        fontFamily: 'Segoe UI',
        useMaterial3: true,
        scaffoldBackgroundColor: lightBackground,
      ),
      home: const StudentProjectsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// -------------------------------------------------------------------------
// 3. DATA MODELS
// -------------------------------------------------------------------------

class Subject {
  final String name;
  final String grade;
  final int score;
  final int progress;
  final String teacher;
  final String lastExam;
  final String nextExam;
  final String email;
  final String phone;
  final String office;
  final String schedule;
  final int assignments;
  final int completed;
  final int attendance;
  final List<String> topics;
  final List<String> resources;

  Subject({
    required this.name,
    required this.grade,
    required this.score,
    required this.progress,
    required this.teacher,
    required this.lastExam,
    required this.nextExam,
    required this.email,
    required this.phone,
    required this.office,
    required this.schedule,
    required this.assignments,
    required this.completed,
    required this.attendance,
    required this.topics,
    required this.resources,
  });
}

class Exam {
  final String subject;
  final String examType;
  final int score;
  final String grade;
  final String date;
  final String status;

  Exam({
    required this.subject,
    required this.examType,
    required this.score,
    required this.grade,
    required this.date,
    required this.status,
  });
}

class AcademicGoal {
  final String title;
  final String target;
  final String current;
  final String deadline;
  final String status;

  AcademicGoal({
    required this.title,
    required this.target,
    required this.current,
    required this.deadline,
    required this.status,
  });
}

// -------------------------------------------------------------------------
// 4. MOCK DATA INITIALIZATION
// -------------------------------------------------------------------------

final List<Subject> mockSubjects = [
  Subject(
    name: 'Mathematics',
    grade: 'A',
    score: 92,
    progress: 92,
    teacher: 'Mr. Johnson',
    lastExam: 'Mid-Term (92%)',
    nextExam: 'Final Exam (Dec 20)',
    email: 'johnson@school.edu',
    phone: '+1-555-0123',
    office: 'Room 201',
    schedule: 'Mon, Wed, Fri 9:00 AM',
    assignments: 8,
    completed: 7,
    attendance: 95,
    topics: ['Algebra', 'Geometry', 'Calculus'],
    resources: ['Textbook', 'Online Practice', 'Study Group'],
  ),
  Subject(
    name: 'Science',
    grade: 'A+',
    score: 95,
    progress: 95,
    teacher: 'Ms. Davis',
    lastExam: 'Unit Test (95%)',
    nextExam: 'Project (Dec 15)',
    email: 'davis@school.edu',
    phone: '+1-555-0124',
    office: 'Room 105',
    schedule: 'Tue, Thu 10:30 AM',
    assignments: 6,
    completed: 6,
    attendance: 98,
    topics: ['Physics', 'Chemistry', 'Biology'],
    resources: ['Lab Manual', 'Virtual Labs', 'Research Papers'],
  ),
  Subject(
    name: 'English',
    grade: 'B+',
    score: 87,
    progress: 87,
    teacher: 'Mrs. Wilson',
    lastExam: 'Essay (87%)',
    nextExam: 'Literature Test (Dec 18)',
    email: 'wilson@school.edu',
    phone: '+1-555-0125',
    office: 'Room 302',
    schedule: 'Mon, Wed 2:00 PM',
    assignments: 5,
    completed: 4,
    attendance: 92,
    topics: ['Literature', 'Grammar', 'Writing'],
    resources: ['Novels', 'Grammar Guide', 'Writing Center'],
  ),
  Subject(
    name: 'History',
    grade: 'A-',
    score: 89,
    progress: 89,
    teacher: 'Mr. Brown',
    lastExam: 'Chapter Test (89%)',
    nextExam: 'Research Paper (Dec 22)',
    email: 'brown@school.edu',
    phone: '+1-555-0126',
    office: 'Room 208',
    schedule: 'Tue, Thu 1:00 PM',
    assignments: 4,
    completed: 4,
    attendance: 94,
    topics: ['World History', 'American History', 'Geography'],
    resources: ['Textbook', 'Primary Sources', 'Maps'],
  ),
];

final List<Exam> mockExams = [
  Exam(
    subject: 'Mathematics',
    examType: 'Mid-Term',
    score: 92,
    grade: 'A',
    date: '2024-12-01',
    status: 'completed',
  ),
  Exam(
    subject: 'Science',
    examType: 'Unit Test',
    score: 95,
    grade: 'A+',
    date: '2024-11-28',
    status: 'completed',
  ),
  Exam(
    subject: 'English',
    examType: 'Essay',
    score: 87,
    grade: 'B+',
    date: '2024-11-25',
    status: 'completed',
  ),
];

final List<AcademicGoal> mockGoals = [
  AcademicGoal(
    title: 'Achieve 4.0 GPA',
    target: '4.0',
    current: '3.8',
    deadline: 'End of Semester',
    status: 'ongoing',
  ),
  AcademicGoal(
    title: 'Improve Mathematics Score',
    target: '95%',
    current: '92%',
    deadline: 'Next Month',
    status: 'ongoing',
  ),
  AcademicGoal(
    title: 'Complete Research Paper',
    target: 'A Grade',
    current: 'In Progress',
    deadline: 'Dec 15',
    status: 'ongoing',
  ),
];

// -------------------------------------------------------------------------
// 5. STUDENT PROJECTS PAGE (THE WIDGET)
// -------------------------------------------------------------------------

class StudentProjectsPage extends StatefulWidget {
  const StudentProjectsPage({super.key});

  @override
  State<StudentProjectsPage> createState() => _StudentProjectsPageState();
}

class _StudentProjectsPageState extends State<StudentProjectsPage> {
  Subject selectedSubject = mockSubjects.first;

  // --- UTILITIES ---
  Color _getGradeColor(String grade) {
    String cleanGrade = grade
        .replaceAll('+', '')
        .replaceAll('-', '')
        .toLowerCase();
    switch (cleanGrade) {
      case 'a':
        return const Color(0xff40c057);
      case 'b':
        return const Color(0xff4dabf7);
      case 'c':
        return const Color(0xffffc419);
      default:
        return Colors.grey;
    }
  }

  Color _getScoreColor(int score) {
    if (score >= 90) return const Color(0xff40c057);
    if (score >= 80) return const Color(0xff4dabf7);
    return const Color(0xffffc419);
  }

  void _showSnackbar(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
      );
    }
  }

  // -------------------------------------------------------------------------
  // 7. DETAIL MODALS
  // -------------------------------------------------------------------------

  void _showSubjectDetailsModal(Subject subject) {
    Color gradeColor = _getGradeColor(subject.grade);

    List<Map<String, dynamic>> detailItems = [
      {
        'label': 'Current Grade',
        'value': '${subject.grade} (${subject.score}%)',
        'icon': Icons.grade,
        'color': gradeColor,
      },
      {
        'label': 'Teacher',
        'value': subject.teacher,
        'icon': Icons.person,
        'color': Colors.blueGrey,
      },
      {
        'label': 'Next Exam',
        'value': subject.nextExam,
        'icon': Icons.access_time,
        'color': Colors.red,
      },
      {
        'label': 'Attendance Rate',
        'value': '${subject.attendance}%',
        'icon': Icons.check_circle_outline,
        'color': Colors.green,
      },
      {
        'label': 'Assignments Done',
        'value': '${subject.completed}/${subject.assignments}',
        'icon': Icons.assignment_turned_in,
        'color': Colors.purple,
      },
      {
        'label': 'Schedule',
        'value': subject.schedule,
        'icon': Icons.calendar_month,
        'color': Colors.blue,
      },
      {
        'label': 'Office Hour',
        'value': subject.office,
        'icon': Icons.location_on,
        'color': Colors.teal,
      },
      {
        'label': 'Contact Email',
        'value': subject.email,
        'icon': Icons.email,
        'color': Colors.indigo,
      },
      {
        'label': 'Contact Phone',
        'value': subject.phone,
        'icon': Icons.phone,
        'color': Colors.cyan,
      },
    ];

    Widget buildDetailTopics(List<String> topics) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Topics Covered:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: topics
                .map(
                  (topic) => Chip(
                    label: Text(topic, style: const TextStyle(fontSize: 13)),
                    backgroundColor: Theme.of(
                      context,
                    ).primaryColor.withOpacity(0.1),
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      );
    }

    Widget buildDetailResources(List<String> resources) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Online Resources:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: resources
                .map(
                  (resource) => ActionChip(
                    label: Text(
                      resource,
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    avatar: const Icon(
                      Icons.link,
                      size: 18,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.teal,
                    onPressed: () => _showSnackbar('Opening $resource...'),
                  ),
                )
                .toList(),
          ),
        ],
      );
    }

    Widget buildModalDetailItem(
      String label,
      String value,
      IconData icon,
      Color color,
    ) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
          color: color.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, size: 18, color: color),
            const SizedBox(width: 6),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xff666666),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 1),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      constraints: const BoxConstraints(maxWidth: 600),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Drag handle
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Text(
                  '📚 Subject Details: ${subject.name}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: gradeColor,
                  ),
                ),
                const Divider(height: 20),

                // Details Grid
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: detailItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.7,
                  ),
                  itemBuilder: (context, index) {
                    final item = detailItems[index];
                    return buildModalDetailItem(
                      item['label'] as String,
                      item['value'] as String,
                      item['icon'] as IconData,
                      item['color'] as Color,
                    );
                  },
                ),

                const SizedBox(height: 20),
                buildDetailTopics(subject.topics),
                const SizedBox(height: 15),
                buildDetailResources(subject.resources),

                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Close',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showExamDetailsModal(Exam exam) {
    Color scoreColor = _getScoreColor(exam.score);
    Color gradeColor = _getGradeColor(exam.grade);

    Widget buildModalDetailRow(String label, String value, IconData icon) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
            const SizedBox(width: 10),
            Text(label, style: const TextStyle(color: Color(0xff666666))),
            const Spacer(),
            Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      );
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '📝 ${exam.subject} - ${exam.examType}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 20),

            // Grade and Score
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Score:', style: TextStyle(color: Colors.grey[600])),
                Text(
                  '${exam.score}%',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: scoreColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Grade:', style: TextStyle(color: Colors.grey[600])),
                Text(
                  exam.grade,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: gradeColor,
                  ),
                ),
              ],
            ),
            const Divider(height: 25),

            buildModalDetailRow("Date Taken", exam.date, Icons.calendar_today),
            buildModalDetailRow(
              "Status",
              exam.status.toUpperCase(),
              Icons.check_circle_outline,
            ),
            buildModalDetailRow(
              "Subject Teacher",
              mockSubjects.firstWhere((s) => s.name == exam.subject).teacher,
              Icons.person,
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _showSnackbar('Opening score breakdown...'),
                icon: const Icon(Icons.analytics, color: Colors.white),
                label: const Text(
                  'View Detailed Breakdown',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showGoalDetailsModal(AcademicGoal goal) {
    Color statusColor = goal.status == 'completed' ? Colors.green : Colors.blue;

    Widget buildModalDetailRow(String label, String value, IconData icon) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
            const SizedBox(width: 10),
            Text(label, style: const TextStyle(color: Color(0xff666666))),
            const Spacer(),
            Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      );
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '🎯 ${goal.title}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: statusColor,
              ),
            ),
            const Divider(height: 20),

            buildModalDetailRow(
              "Current Status",
              goal.status.toUpperCase(),
              Icons.timeline,
            ),
            buildModalDetailRow("Target Goal", goal.target, Icons.arrow_upward),
            buildModalDetailRow(
              "Current Progress",
              goal.current,
              Icons.bar_chart,
            ),
            buildModalDetailRow(
              "Deadline",
              goal.deadline,
              Icons.calendar_month,
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () =>
                    _showSnackbar('Editing goal for ${goal.title}'),
                icon: const Icon(Icons.edit, color: Colors.white),
                label: const Text(
                  'Modify Goal',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: statusColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // -------------------------------------------------------------------------
  // 6. WIDGET BUILDERS
  // -------------------------------------------------------------------------

  Widget _buildSectionHeader(String emoji, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        '$emoji $title',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333),
        ),
      ),
    );
  }

  Widget _buildStatsGrid() {
    const totalGPA = '3.8';
    const classRank = '5';
    const attendance = '95%';
    final subjectsCount = mockSubjects.length.toString();
    final primaryColor = Theme.of(context).primaryColor;
    final secondaryColor = Theme.of(context).colorScheme.secondary;

    final stats = [
      {
        'emoji': '📊',
        'value': totalGPA,
        'label': 'Overall GPA',
        'color': Colors.blue,
        'borderColor': primaryColor,
      },
      {
        'emoji': '🏆',
        'value': classRank,
        'label': 'Class Rank',
        'color': secondaryColor,
        'borderColor': secondaryColor,
      },
      {
        'emoji': '✅',
        'value': attendance,
        'label': 'Attendance',
        'color': Colors.green,
        'borderColor': primaryColor,
      },
      {
        'emoji': '📚',
        'value': subjectsCount,
        'label': 'Subjects',
        'color': Colors.orange,
        'borderColor': secondaryColor,
      },
    ];

    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stats.length,
        padding: const EdgeInsets.only(right: 16),
        itemBuilder: (context, index) {
          final stat = stats[index];
          return Container(
            margin: EdgeInsets.only(right: index < stats.length - 1 ? 16 : 0),
            child: _statCard(
              stat['emoji'] as String,
              stat['value'] as String,
              stat['label'] as String,
              stat['color'] as Color,
              stat['borderColor'] as Color,
            ),
          );
        },
      ),
    );
  }

  Widget _statCard(
    String emoji,
    String number,
    String label,
    Color accentColor,
    Color borderColor,
  ) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border(top: BorderSide(color: borderColor, width: 4)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 28, height: 1.0)),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                number,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xff666666),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSubjectPerformanceList() {
    return ListView.builder(
      // Corrected settings for nesting ListView:
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mockSubjects.length,
      itemBuilder: (context, index) {
        final subject = mockSubjects[index];
        return _subjectCard(subject);
      },
    );
  }

  Widget _subjectCard(Subject subject) {
    Color gradeColor = _getGradeColor(subject.grade);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () => _showSubjectDetailsModal(subject),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300, width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      subject.name,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [gradeColor.withOpacity(0.9), gradeColor],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      subject.grade,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Score: ${subject.score}% • Teacher: ${subject.teacher}',
                style: const TextStyle(color: Color(0xff666666), fontSize: 14),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today,
                    size: 14,
                    color: Color(0xff666666),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Next Exam: ${subject.nextExam}',
                      style: const TextStyle(
                        color: Color(0xff666666),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: subject.progress / 100.0,
                  backgroundColor: const Color(0xffe9ecef),
                  valueColor: const AlwaysStoppedAnimation(Color(0xFF6A67FC)),
                  minHeight: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExamList() {
    return ListView.builder(
      // Corrected settings for nesting ListView:
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mockExams.length,
      itemBuilder: (context, index) {
        final exam = mockExams[index];
        Color scoreColor = _getScoreColor(exam.score);

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: InkWell(
            onTap: () => _showExamDetailsModal(exam),
            borderRadius: BorderRadius.circular(12),
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: const Border(
                  left: BorderSide(color: Color(0xff28a745), width: 4),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${exam.subject} - ${exam.examType}',
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 14,
                              color: Color(0xff666666),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Grade: ${exam.grade} • ${exam.date}',
                              style: const TextStyle(
                                color: Color(0xff666666),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [scoreColor.withOpacity(0.9), scoreColor],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${exam.score}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildGoalsList() {
    return ListView.builder(
      // Corrected settings for nesting ListView:
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mockGoals.length,
      itemBuilder: (context, index) {
        final goal = mockGoals[index];
        bool isCompleted = goal.status == 'completed';
        Color statusColor = isCompleted ? Colors.green : Colors.blue;

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: InkWell(
            onTap: () => _showGoalDetailsModal(goal),
            borderRadius: BorderRadius.circular(12),
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border(left: BorderSide(color: statusColor, width: 4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          goal.title,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: statusColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          goal.status.toUpperCase(),
                          style: TextStyle(
                            color: statusColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.track_changes,
                        size: 14,
                        color: Color(0xff666666),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Target: ${goal.target} | Current: ${goal.current}',
                        style: const TextStyle(
                          color: Color(0xff666666),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: Color(0xff666666),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Deadline: ${goal.deadline}',
                        style: const TextStyle(
                          color: Color(0xff666666),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // --- NEW WIDGET: Vertical Action Button (Replaces _buildActionCard) ---
  Widget _buildVerticalActionButton(
    IconData icon,
    String text,
    VoidCallback onPressed,
  ) {
    // The color scheme from the image appears to be a solid/gradient purple/blue
    // The color used in the original image is likely 0xFF667eea or similar purple-blue.
    const Color startColor = Color(0xFF7A8EFF); // Lighter purple-blue
    const Color endColor = Color(0xFF667eea); // Darker purple-blue

    // Map icons from image:
    // Join New Activity: Icons.add_circle (used original + icon)
    // Contact Coach: Icons.chat_bubble (used original chat icon)
    // View Calendar: Icons.calendar_today (used original calendar icon)
    // Download Certificates: Icons.download_for_offline (used original document icon)
    IconData leadingIcon = Icons.add_circle_outline;
    if (text.contains('Contact Coach')) {
      leadingIcon = Icons.chat_bubble_outline;
    } else if (text.contains('View Calendar')) {
      leadingIcon = Icons.calendar_today;
    } else if (text.contains('Download Certificates')) {
      leadingIcon = Icons.download_for_offline;
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        width: double.infinity, // Full width
        height: 55, // Set a consistent height for the button

        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [startColor, endColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: endColor.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(leadingIcon, color: Colors.white, size: 24),
                    const SizedBox(width: 12),
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // --- MODIFIED QUICK ACTIONS WIDGET (Vertical Column) ---
  Widget _buildQuickActions() {
    final actions = [
      {
        'text': 'Join New Activity',
        'onPressed': () => _showSnackbar('Joining New Activity...'),
      },
      {
        'text': 'Contact Coach',
        'onPressed': () => _showSnackbar('Contacting Coach...'),
      },
      {
        'text': 'View Calendar',
        'onPressed': () => _showSnackbar('Viewing Calendar...'),
      },
      {
        'text': 'Download Certificates',
        'onPressed': () => _showSnackbar('Downloading Certificates...'),
      },
    ];

    // Key change: Use a Column for a vertical layout
    return Column(
      children: actions.map((action) {
        // Since the icon is derived from the text inside _buildVerticalActionButton,
        // we only need to pass the text and onPressed function here.
        return _buildVerticalActionButton(
          Icons.add, // Placeholder, actual icon derived in the function
          action['text'] as String,
          action['onPressed'] as VoidCallback,
        );
      }).toList(),
    );
  }

  // The original _buildActionCard for the horizontal view is now removed as it's not needed.

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWebDesktop = screenWidth > 600;
    final maxContentWidth = isWebDesktop ? 600.0 : screenWidth;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A67FC),
        elevation: 0,
        toolbarHeight: 60,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => _showSnackbar("Navigating Back (Simulated)"),
          tooltip: 'Back',
          iconSize: 24,
        ),
        title: const Text(
          "Academics Dashboard",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () => _showSnackbar("Data Refreshed!"),
            tooltip: 'Refresh',
            iconSize: 24,
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () => _showSnackbar("Showing Profile"),
            tooltip: 'Profile',
            iconSize: 24,
          ),
          const SizedBox(width: 8),
        ],
      ),

      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxContentWidth),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isWebDesktop ? 24 : 16,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '📚 Student Academics',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A67FC),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0, bottom: 16.0),
                  child: Text(
                    'Comprehensive academic performance overview',
                    style: TextStyle(color: Color(0xff666666), fontSize: 15),
                  ),
                ),
                _buildStatsGrid(),
                const SizedBox(height: 25),

                _buildSectionHeader('📖', 'Subject Performance'),
                _buildSubjectPerformanceList(),
                const SizedBox(height: 30),

                _buildSectionHeader('📝', 'Recent Exam Results'),
                _buildExamList(),
                const SizedBox(height: 30),

                _buildSectionHeader('🎯', 'Academic Goals'),
                _buildGoalsList(),
                const SizedBox(height: 30),

                // Quick Actions (Vertical Column with full-width buttons)
                _buildSectionHeader('⚡', 'Quick Actions'),
                _buildQuickActions(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}