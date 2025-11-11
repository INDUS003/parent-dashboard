// Daily Tasks for School Management System//

// import 'package:flutter/material.dart';

// void main() => runApp(const DailyTasksApp());

// class DailyTasksApp extends StatelessWidget {
//   const DailyTasksApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daily Tasks - School Management System',
//       theme: ThemeData(fontFamily: 'Segoe UI'),
//       home: const DailyTasksPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class Task {
//   final int id;
//   final String title;
//   final String description;
//   final String category;
//   final String priority;
//   String status;
//   final String dueDate;
//   final String subject;

//   Task({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.category,
//     required this.priority,
//     required this.status,
//     required this.dueDate,
//     required this.subject,
//   });
// }

// class DailyTasksPage extends StatefulWidget {
//   const DailyTasksPage({super.key});

//   @override
//   State<DailyTasksPage> createState() => _DailyTasksPageState();
// }

// class _DailyTasksPageState extends State<DailyTasksPage> {
//   List<Task> dailyTasks = [
//     Task(
//       id: 1,
//       title: 'Complete Mathematics Assignment',
//       description: 'Chapter 5 - Algebra problems 1-20',
//       category: 'homework',
//       priority: 'high',
//       status: 'completed',
//       dueDate: '2024-12-15',
//       subject: 'Mathematics',
//     ),
//     Task(
//       id: 2,
//       title: 'Read Science Chapter 8',
//       description: 'Biology - Human Body Systems',
//       category: 'study',
//       priority: 'medium',
//       status: 'pending',
//       dueDate: '2024-12-16',
//       subject: 'Science',
//     ),
//     Task(
//       id: 3,
//       title: 'Prepare for English Presentation',
//       description: 'Research and prepare slides for tomorrow',
//       category: 'homework',
//       priority: 'high',
//       status: 'pending',
//       dueDate: '2024-12-15',
//       subject: 'English',
//     ),
//     Task(
//       id: 4,
//       title: 'Practice Piano',
//       description: 'Practice for music class performance',
//       category: 'activity',
//       priority: 'low',
//       status: 'completed',
//       dueDate: '2024-12-15',
//       subject: 'Music',
//     ),
//     Task(
//       id: 5,
//       title: 'Complete History Essay',
//       description: 'Write 500-word essay on World War II',
//       category: 'homework',
//       priority: 'medium',
//       status: 'overdue',
//       dueDate: '2024-12-14',
//       subject: 'History',
//     ),
//     Task(
//       id: 6,
//       title: 'Study for Math Test',
//       description: 'Review chapters 1-4 for tomorrow\'s test',
//       category: 'study',
//       priority: 'high',
//       status: 'pending',
//       dueDate: '2024-12-16',
//       subject: 'Mathematics',
//     ),
//     Task(
//       id: 7,
//       title: 'Art Project',
//       description: 'Complete watercolor painting for art class',
//       category: 'activity',
//       priority: 'low',
//       status: 'completed',
//       dueDate: '2024-12-15',
//       subject: 'Art',
//     ),
//     Task(
//       id: 8,
//       title: 'Physical Education',
//       description: 'Complete 30 minutes of exercise',
//       category: 'activity',
//       priority: 'medium',
//       status: 'pending',
//       dueDate: '2024-12-15',
//       subject: 'Physical Education',
//     ),
//   ];

//   String currentFilter = 'all';

//   @override
//   Widget build(BuildContext context) {
//     final filteredTasks = dailyTasks.where((task) {
//       if (currentFilter == 'all') return true;
//       if (currentFilter == 'pending') return task.status == 'pending';
//       if (currentFilter == 'completed') return task.status == 'completed';
//       if (currentFilter == 'overdue') return task.status == 'overdue';
//       if (currentFilter == 'homework') return task.category == 'homework';
//       if (currentFilter == 'study') return task.category == 'study';
//       return true;
//     }).toList();

//     final completedCount = dailyTasks
//         .where((t) => t.status == 'completed')
//         .length;
//     final pendingCount = dailyTasks.where((t) => t.status == 'pending').length;
//     final homeworkCount = dailyTasks
//         .where((t) => t.category == 'homework')
//         .length;
//     final overdueCount = dailyTasks.where((t) => t.status == 'overdue').length;
//     final totalTasks = dailyTasks.length;
//     final completionRate = totalTasks == 0
//         ? 0
//         : ((completedCount / totalTasks) * 100).round();

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 202, 219, 238),
//       body: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color(0xff667eea),
//                   Color(0xff764ba2),
//                   Color(0xfff093fb),
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     "🏫 School Management System",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     style: TextButton.styleFrom(
//                       backgroundColor: Colors.white.withOpacity(0.2),
//                       side: const BorderSide(color: Colors.white30),
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 8,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       "← Back to Dashboard",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ShaderMask(
//                     shaderCallback: (bounds) => const LinearGradient(
//                       colors: [Color(0xff667eea), Color(0xff764ba2)],
//                     ).createShader(bounds),
//                     child: const Text(
//                       "Daily Tasks",
//                       style: TextStyle(
//                         fontSize: 36,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   const Text(
//                     "Manage daily tasks, assignments, and activities",
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 0, 0, 0),
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   _buildStatsGrid(
//                     completedCount,
//                     pendingCount,
//                     homeworkCount,
//                     completionRate,
//                   ),
//                   const SizedBox(height: 30),
//                   _buildProgressSection(
//                     completionRate,
//                     totalTasks,
//                     completedCount,
//                   ),
//                   const SizedBox(height: 30),
//                   _buildTaskControls(),
//                   const SizedBox(height: 20),
//                   Column(
//                     children: filteredTasks
//                         .map((t) => _buildTaskCard(t))
//                         .toList(),
//                   ),
//                   const SizedBox(height: 40),
//                   _buildSummarySidebar(
//                     totalTasks,
//                     completedCount,
//                     pendingCount,
//                     overdueCount,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatsGrid(int completed, int pending, int homework, int rate) {
//     final stats = [
//       {"icon": "✅", "label": "Completed Today", "value": "$completed"},
//       {"icon": "⏳", "label": "Pending Tasks", "value": "$pending"},
//       {"icon": "📚", "label": "Homework", "value": "$homework"},
//       {"icon": "🎯", "label": "Completion Rate", "value": "$rate%"},
//     ];

//     return GridView.count(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       crossAxisCount: 4,
//       crossAxisSpacing: 25,
//       mainAxisSpacing: 30,
//       children: stats
//           .map(
//             (stat) => Container(
//               decoration: BoxDecoration(
//                 color: Color(0xffe9ecef),
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12.withOpacity(0.08),
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(5),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(stat["icon"]!, style: const TextStyle(fontSize: 60)),
//                   const SizedBox(height: 0),
//                   Text(
//                     stat["value"]!,
//                     style: const TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     stat["label"]!,
//                     style: const TextStyle(
//                       fontSize: 20,
//                       color: Color.fromARGB(255, 12, 12, 12),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//           .toList(),
//     );
//   }

//   Widget _buildProgressSection(int completionRate, int total, int completed) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           "📊 Today's Progress",
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           height: 20,
//           decoration: BoxDecoration(
//             color: const Color(0xffe9ecef),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: FractionallySizedBox(
//             alignment: Alignment.centerLeft,
//             widthFactor: completionRate / 100,
//             child: Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xff28a745), Color(0xff20c997)],
//                 ),
//                 borderRadius: BorderRadius.horizontal(
//                   left: Radius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Center(
//           child: Text(
//             "$completed of $total tasks completed",
//             style: const TextStyle(color: Colors.grey),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildTaskControls() {
//     return Wrap(
//       spacing: 10,
//       runSpacing: 10,
//       children: [
//         _filterButton('All Tasks', 'all'),
//         _filterButton('Pending', 'pending'),
//         _filterButton('Completed', 'completed'),
//         _filterButton('Overdue', 'overdue'),
//         _filterButton('Homework', 'homework'),
//         _filterButton('Study', 'study'),
//         ElevatedButton(
//           onPressed: () => _showSnack('Add new task'),
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color(0xff28a745),
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           child: const Text(
//             "+ Add Task",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _filterButton(String label, String filter) {
//     final active = currentFilter == filter;
//     return OutlinedButton(
//       onPressed: () => setState(() => currentFilter = filter),
//       style: OutlinedButton.styleFrom(
//         side: BorderSide(color: active ? const Color(0xff667eea) : Colors.grey),
//         backgroundColor: active ? const Color(0xff667eea) : Colors.white,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       ),
//       child: Text(
//         label,
//         style: TextStyle(
//           color: active ? Colors.white : const Color(0xff667eea),
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     );
//   }

//   Widget _buildTaskCard(Task task) {
//     Color lineColor;
//     switch (task.status) {
//       case 'completed':
//         lineColor = const Color(0xff28a745);
//         break;
//       case 'overdue':
//         lineColor = const Color(0xffdc3545);
//         break;
//       case 'pending':
//       default:
//         lineColor = const Color(0xff667eea);
//         break;
//     }

//     Color statusColor;
//     switch (task.status) {
//       case 'completed':
//         statusColor = const Color(0xff28a745);
//         break;
//       case 'overdue':
//         statusColor = const Color(0xffdc3545);
//         break;
//       default:
//         statusColor = const Color(0xffffc107);
//         break;
//     }

//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Color(0xfff8f9fa), Color(0xffe9ecef)],
//         ),
//         borderRadius: BorderRadius.circular(12),
//         border: Border(left: BorderSide(color: lineColor, width: 4)),
//         boxShadow: [
//           BoxShadow(color: Colors.black12.withOpacity(0.08), blurRadius: 6),
//         ],
//       ),
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 task.title,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 10,
//                   vertical: 4,
//                 ),
//                 decoration: BoxDecoration(
//                   color: statusColor,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Text(
//                   task.status.toUpperCase(),
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Text(task.description, style: const TextStyle(color: Colors.grey)),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               Text(
//                 "📅 ${task.dueDate}",
//                 style: const TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 "📚 ${task.subject}",
//                 style: const TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 "🏷️ ${task.category}",
//                 style: const TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               if (task.status != 'completed')
//                 _actionButton(
//                   "Complete",
//                   const Color(0xff28a745),
//                   () => _completeTask(task),
//                 ),
//               const SizedBox(width: 8),
//               _actionButton(
//                 "Edit",
//                 const Color(0xff17a2b8),
//                 () => _showSnack("Edit ${task.title}"),
//               ),
//               const SizedBox(width: 8),
//               _actionButton(
//                 "Delete",
//                 const Color(0xffdc3545),
//                 () => _deleteTask(task),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _actionButton(String label, Color color, VoidCallback onPressed) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//       ),
//       child: Text(
//         label,
//         style: const TextStyle(color: Colors.white, fontSize: 12),
//       ),
//     );
//   }

//   void _completeTask(Task task) {
//     setState(() {
//       task.status = 'completed';
//     });
//   }

//   void _deleteTask(Task task) {
//     setState(() {
//       dailyTasks.remove(task);
//     });
//   }

//   void _showSnack(String msg) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
//   }

//   Widget _buildSummarySidebar(
//     int total,
//     int completed,
//     int pending,
//     int overdue,
//   ) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Color(0xfff8f9fa), Color(0xffe9ecef)],
//         ),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(color: Colors.black12.withOpacity(0.08), blurRadius: 8),
//         ],
//       ),
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "📋 Daily Summary",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
//           ),
//           const SizedBox(height: 10),
//           _summaryItem("Total Tasks:", "$total"),
//           _summaryItem("Completed:", "$completed"),
//           _summaryItem("Pending:", "$pending"),
//           _summaryItem("Overdue:", "$overdue"),
//           _summaryItem("Study Hours:", "4.5 hrs"),
//         ],
//       ),
//     );
//   }

//   Widget _summaryItem(String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
//           Text(value, style: const TextStyle(color: Colors.grey)),
//         ],
//       ),
//     );
//   }
// }

// Mobile Version of Daily Tasks Page

import 'package:flutter/material.dart';

void main() => runApp(const DailyTasksApp());

class DailyTasksApp extends StatelessWidget {
  const DailyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Tasks - School Management System',
      theme: ThemeData(
        fontFamily: 'Segoe UI',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
        ).copyWith(secondary: const Color(0xff28a745)),
      ),
      home: const DailyTasksPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task {
  final int id;
  String title;
  String description;
  String category;
  String priority;
  String status;
  String dueDate;
  String subject;

  // Note: Properties are now non-final to allow direct modification via setState,
  // though using a copy is often better practice, this simplifies for a beginner demo.
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.priority,
    required this.status,
    required this.dueDate,
    required this.subject,
  });
}

class DailyTasksPage extends StatefulWidget {
  const DailyTasksPage({super.key});

  @override
  State<DailyTasksPage> createState() => _DailyTasksPageState();
}

class _DailyTasksPageState extends State<DailyTasksPage>
    with SingleTickerProviderStateMixin {
  List<Task> dailyTasks = [
    Task(
      id: 1,
      title: 'Complete Mathematics Assignment',
      description: 'Chapter 5 - Algebra problems 1-20',
      category: 'homework',
      priority: 'high',
      status: 'completed',
      dueDate: '2024-12-15',
      subject: 'Mathematics',
    ),
    Task(
      id: 2,
      title: 'Read Science Chapter 8',
      description: 'Biology - Human Body Systems',
      category: 'study',
      priority: 'medium',
      status: 'pending',
      dueDate: '2024-12-16',
      subject: 'Science',
    ),
    Task(
      id: 3,
      title: 'Prepare for English Presentation',
      description: 'Research and prepare slides for tomorrow',
      category: 'homework',
      priority: 'high',
      status: 'pending',
      dueDate: '2024-12-15',
      subject: 'English',
    ),
    Task(
      id: 4,
      title: 'Practice Piano',
      description: 'Practice for music class performance',
      category: 'activity',
      priority: 'low',
      status: 'completed',
      dueDate: '2024-12-15',
      subject: 'Music',
    ),
    Task(
      id: 5,
      title: 'Complete History Essay',
      description: 'Write 500-word essay on World War II',
      category: 'homework',
      priority: 'medium',
      status: 'overdue',
      dueDate: '2024-12-14',
      subject: 'History',
    ),
    Task(
      id: 6,
      title: 'Study for Math Test',
      description: 'Review chapters 1-4 for tomorrow\'s test',
      category: 'study',
      priority: 'high',
      status: 'pending',
      dueDate: '2024-12-16',
      subject: 'Mathematics',
    ),
    Task(
      id: 7,
      title: 'Art Project',
      description: 'Complete watercolor painting for art class',
      category: 'activity',
      priority: 'low',
      status: 'completed',
      dueDate: '2024-12-15',
      subject: 'Art',
    ),
    Task(
      id: 8,
      title: 'Physical Education',
      description: 'Complete 30 minutes of exercise',
      category: 'activity',
      priority: 'medium',
      status: 'pending',
      dueDate: '2024-12-15',
      subject: 'Physical Education',
    ),
  ];

  String currentFilter = 'all';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // --- Task Management Methods ---
  void _completeTask(Task task) {
    setState(() {
      task.status = 'completed';
      _showSnack('Task "${task.title}" completed! Good job. 🎉');
    });
  }

  void _deleteTask(Task task) {
    setState(() {
      dailyTasks.remove(task);
      _showSnack('Task "${task.title}" deleted.');
    });
  }

  void _addNewTask(Task newTask) {
    setState(() {
      dailyTasks.add(newTask);
      _showSnack('Task "${newTask.title}" added successfully!');
    });
  }

  // NEW METHOD: Update an existing task
  void _editTask(
    Task taskToEdit,
    String newTitle,
    String newDescription,
    String newCategory,
    String newPriority,
    String newDueDate,
    String newSubject,
  ) {
    setState(() {
      taskToEdit.title = newTitle;
      taskToEdit.description = newDescription;
      taskToEdit.category = newCategory;
      taskToEdit.priority = newPriority;
      taskToEdit.dueDate = newDueDate;
      taskToEdit.subject = newSubject;
      _showSnack('Task "$newTitle" updated!');
    });
  }

  void _showSnack(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  // --- Reusable Dialog Builder ---

  // Helper method to build the common form structure for both Add and Edit
  Widget _buildTaskForm(
    Task? task, // Null if adding, not null if editing
    TextEditingController titleController,
    TextEditingController descriptionController,
    TextEditingController subjectController,
    String initialCategory,
    String initialPriority,
    String initialDueDate,
    GlobalKey<FormState> formKey,
    Function(String) onCategoryChanged,
    Function(String) onPriorityChanged,
    Function(String) onDateChanged,
  ) {
    // Local state variables for dropdowns and date picker
    String category = initialCategory;
    String priority = initialPriority;
    String dueDate = initialDueDate;

    return StatefulBuilder(
      builder: (context, setStateSB) {
        return AlertDialog(
          title: Text(
            task == null ? "➕ Add New Task" : "✏️ Edit Task",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: "Task Title",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Title cannot be empty' : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      labelText: "Description",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: subjectController,
                    decoration: const InputDecoration(
                      labelText: "Subject (e.g., Science)",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Subject required' : null,
                  ),
                  const SizedBox(height: 15),
                  // Dropdown for Category
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Category",
                      border: OutlineInputBorder(),
                    ),
                    initialValue: category,
                    items: const [
                      DropdownMenuItem(
                        value: 'homework',
                        child: Text("📚 Homework"),
                      ),
                      DropdownMenuItem(value: 'study', child: Text("📖 Study")),
                      DropdownMenuItem(
                        value: 'activity',
                        child: Text("🏃 Activity"),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setStateSB(() {
                        category = newValue!;
                        onCategoryChanged(newValue);
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  // Dropdown for Priority
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Priority",
                      border: OutlineInputBorder(),
                    ),
                    initialValue: priority,
                    items: const [
                      DropdownMenuItem(value: 'high', child: Text("🚨 High")),
                      DropdownMenuItem(
                        value: 'medium',
                        child: Text("🟡 Medium"),
                      ),
                      DropdownMenuItem(value: 'low', child: Text("🟢 Low")),
                    ],
                    onChanged: (String? newValue) {
                      setStateSB(() {
                        priority = newValue!;
                        onPriorityChanged(newValue);
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  // Due Date Picker (Simplified)
                  Row(
                    children: [
                      const Icon(Icons.calendar_today, color: Colors.indigo),
                      const SizedBox(width: 8),
                      Text("Due Date: $dueDate"),
                      const Spacer(),
                      TextButton(
                        onPressed: () async {
                          final pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.parse(dueDate),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2030),
                          );
                          if (pickedDate != null) {
                            setStateSB(() {
                              dueDate = pickedDate.toString().substring(0, 10);
                              onDateChanged(dueDate);
                            });
                          }
                        },
                        child: const Text("Select Date"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel', style: TextStyle(color: Colors.red)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Colors.white,
              ),
              child: Text(task == null ? 'Add Task' : 'Save Changes'),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (task == null) {
                    // Add new task logic
                    final newTask = Task(
                      id: dailyTasks.length + 1,
                      title: titleController.text,
                      description: descriptionController.text.isEmpty
                          ? 'No description provided.'
                          : descriptionController.text,
                      category: category,
                      priority: priority,
                      status: 'pending',
                      dueDate: dueDate,
                      subject: subjectController.text,
                    );
                    _addNewTask(newTask);
                  } else {
                    // Edit existing task logic
                    _editTask(
                      task,
                      titleController.text,
                      descriptionController.text.isEmpty
                          ? 'No description provided.'
                          : descriptionController.text,
                      category,
                      priority,
                      dueDate,
                      subjectController.text,
                    );
                  }
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  // METHOD: Show Add Task Dialog
  void _showAddTaskDialog() {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final subjectController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    String category = 'homework';
    String priority = 'medium';
    String dueDate = DateTime.now().toString().substring(0, 10);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _buildTaskForm(
          null, // Indicates 'Add' mode
          titleController,
          descriptionController,
          subjectController,
          category,
          priority,
          dueDate,
          formKey,
          (newCategory) => category = newCategory,
          (newPriority) => priority = newPriority,
          (newDate) => dueDate = newDate,
        );
      },
    );
  }

  // NEW METHOD: Show Edit Task Dialog
  void _showEditTaskDialog(Task task) {
    final titleController = TextEditingController(text: task.title);
    final descriptionController = TextEditingController(text: task.description);
    final subjectController = TextEditingController(text: task.subject);
    final formKey = GlobalKey<FormState>();

    // These local variables will be updated by the form and passed to _editTask
    String category = task.category;
    String priority = task.priority;
    String dueDate = task.dueDate;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _buildTaskForm(
          task, // Pass the existing task to indicate 'Edit' mode
          titleController,
          descriptionController,
          subjectController,
          category,
          priority,
          dueDate,
          formKey,
          (newCategory) => category = newCategory,
          (newPriority) => priority = newPriority,
          (newDate) => dueDate = newDate,
        );
      },
    );
  }

  // --- Widget Builders ---

  Widget _buildTaskCard(Task task) {
    Color statusColor;
    String icon;

    switch (task.status) {
      case 'completed':
        statusColor = Colors.green;
        icon = '✅';
        break;
      case 'overdue':
        statusColor = Colors.red;
        icon = '⚠️';
        break;
      default:
        statusColor = Colors.orange;
        icon = '⏳';
        break;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: statusColor, width: 2),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: statusColor.withOpacity(0.1),
          child: Text(icon, style: const TextStyle(fontSize: 20)),
        ),
        title: Text(
          task.title,
          style: const TextStyle(fontWeight: FontWeight.bold, decoration: null),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              task.description,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 12, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  task.dueDate,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                const SizedBox(width: 8),
                Icon(Icons.label_outline, size: 12, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  task.category,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
        trailing: PopupMenuButton<String>(
          onSelected: (String result) {
            switch (result) {
              case 'complete':
                _completeTask(task);
                break;
              case 'edit':
                _showEditTaskDialog(task); // <--- CALLING THE NEW EDIT DIALOG
                break;
              case 'delete':
                _deleteTask(task);
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            if (task.status != 'completed')
              const PopupMenuItem<String>(
                value: 'complete',
                child: Row(
                  children: [
                    Icon(Icons.check_circle_outline, color: Colors.green),
                    SizedBox(width: 8),
                    Text('Mark Complete'),
                  ],
                ),
              ),
            const PopupMenuItem<String>(
              value: 'edit',
              child: Row(
                children: [
                  Icon(Icons.edit, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('Edit Task'),
                ],
              ),
            ),
            const PopupMenuItem<String>(
              value: 'delete',
              child: Row(
                children: [
                  Icon(Icons.delete_outline, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Delete Task'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _filterButton(String label, String filter) {
    final active = currentFilter == filter;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ActionChip(
        avatar: active
            ? const Icon(Icons.check, size: 16, color: Colors.white)
            : null,
        label: Text(label),
        backgroundColor: active ? Theme.of(context).primaryColor : Colors.white,
        labelStyle: TextStyle(
          color: active ? Colors.white : Theme.of(context).primaryColor,
          fontWeight: active ? FontWeight.bold : FontWeight.normal,
        ),
        side: BorderSide(
          color: active ? Theme.of(context).primaryColor : Colors.grey.shade300,
        ),
        onPressed: () => setState(() => currentFilter = filter),
      ),
    );
  }

  Widget _buildTaskListView(List<Task> tasks) {
    if (tasks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 80,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              "All clear! No ${currentFilter == 'all' ? '' : currentFilter} tasks found.",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );
    }
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) => _buildTaskCard(tasks[index]),
    );
  }

  Widget _buildStatsView(int completed, int pending, int homework, int rate) {
    final stats = <Map<String, dynamic>>[
      {
        "icon": "✅",
        "label": "Completed Today",
        "value": "$completed",
        "color": Colors.green,
      },
      {
        "icon": "⏳",
        "label": "Pending Tasks",
        "value": "$pending",
        "color": Colors.orange,
      },
      {
        "icon": "📚",
        "label": "Homework",
        "value": "$homework",
        "color": Colors.indigo,
      },
      {
        "icon": "🎯",
        "label": "Completion Rate",
        "value": "$rate%",
        "color": Colors.purple,
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: stats.length + 1,
      itemBuilder: (context, index) {
        if (index == stats.length) {
          return _buildProgressCard(rate, dailyTasks.length, completed);
        }

        final stat = stats[index];
        return Card(
          elevation: 1,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: Text(
              stat["icon"] as String,
              style: const TextStyle(fontSize: 30),
            ),
            title: Text(
              stat["label"] as String,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            trailing: Text(
              stat["value"] as String,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: stat["color"] as Color,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProgressCard(int completionRate, int total, int completed) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "📊 Today's Completion",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: completionRate / 100,
                minHeight: 15,
                backgroundColor: Colors.grey.shade200,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                "$completed of $total tasks completed ($completionRate%)",
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Calculations for the stats
    final filteredTasks = dailyTasks.where((task) {
      if (currentFilter == 'all') return true;
      if (currentFilter == 'pending') return task.status == 'pending';
      if (currentFilter == 'completed') return task.status == 'completed';
      if (currentFilter == 'overdue') return task.status == 'overdue';
      if (currentFilter == 'homework') return task.category == 'homework';
      if (currentFilter == 'study') return task.category == 'study';
      return true;
    }).toList();

    final completedCount = dailyTasks
        .where((t) => t.status == 'completed')
        .length;
    final pendingCount = dailyTasks.where((t) => t.status == 'pending').length;
    final homeworkCount = dailyTasks
        .where((t) => t.category == 'homework')
        .length;
    final totalTasks = dailyTasks.length;
    final completionRate = totalTasks == 0
        ? 0
        : ((completedCount / totalTasks) * 100).round();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Tasks",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => _showSnack("Back to Dashboard (Simulated)"),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.7),
          indicatorColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.list_alt), text: "Tasks"),
            Tab(icon: Icon(Icons.bar_chart), text: "Summary"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddTaskDialog,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text("Add Task", style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // --- Tab 1: Task List ---
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _filterButton('All Tasks', 'all'),
                      _filterButton('Pending', 'pending'),
                      _filterButton('Completed', 'completed'),
                      _filterButton('Overdue', 'overdue'),
                      _filterButton('Homework', 'homework'),
                      _filterButton('Study', 'study'),
                    ],
                  ),
                ),
              ),
              Expanded(child: _buildTaskListView(filteredTasks)),
            ],
          ),

          // --- Tab 2: Summary Stats ---
          _buildStatsView(
            completedCount,
            pendingCount,
            homeworkCount,
            completionRate,
          ),
        ],
      ),
    );
  }
}
