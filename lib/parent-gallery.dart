// import 'package:flutter/material.dart';

// void main() => runApp(
//   MaterialApp(home: SchoolGalleryPage(), debugShowCheckedModeBanner: false),
// );

// class GalleryPhoto {
//   final int id;
//   final String title;
//   final String category;
//   final DateTime date;
//   final String description;
//   final String image; // Emoji
//   final String event;
//   final int participants;
//   final String location;

//   GalleryPhoto({
//     required this.id,
//     required this.title,
//     required this.category,
//     required this.date,
//     required this.description,
//     required this.image,
//     required this.event,
//     required this.participants,
//     required this.location,
//   });
// }

// class RecentEvent {
//   final String title;
//   final DateTime date;
//   final String category;
//   final int participants;

//   RecentEvent({
//     required this.title,
//     required this.date,
//     required this.category,
//     required this.participants,
//   });
// }

// class SchoolGalleryPage extends StatefulWidget {
//   const SchoolGalleryPage({super.key});

//   @override
//   State<SchoolGalleryPage> createState() => _SchoolGalleryPageState();
// }

// class _SchoolGalleryPageState extends State<SchoolGalleryPage> {
//   late List<GalleryPhoto> photos;
//   late List<RecentEvent> events;
//   String categoryFilter = 'all';
//   String yearFilter = 'all';
//   String searchTerm = '';

//   @override
//   void initState() {
//     super.initState();
//     photos = [
//       GalleryPhoto(
//         id: 1,
//         title: 'Annual Sports Day',
//         category: 'sports',
//         date: DateTime(2024, 11, 15),
//         description:
//             "Annual Sports Day promotes fitness, fun, and friendly competition.",
//         image: '',
//         event: 'Sports Day 2024',
//         participants: 150,
//         location: 'School Ground',
//       ),
//       GalleryPhoto(
//         id: 2,
//         title: 'Science Fair Exhibition',
//         category: 'academic',
//         date: DateTime(2024, 10, 20),
//         description:
//             'Students display creative and innovative projects at exhibition.',
//         image: '',
//         event: 'Science Fair 2024',
//         participants: 80,
//         location: 'School Auditorium',
//       ),
//       GalleryPhoto(
//         id: 3,
//         title: "Food Festivals",
//         category: "Activities",
//         date: DateTime(2024, 10, 31),
//         description:
//             "Students enjoy diverse and delicious cuisines at the festival.",
//         image: "",
//         event: "Food Festival 2024",
//         participants: 100,
//         location: "School Canteen",
//       ),
//       // ...Add rest of your mock data as needed
//     ];
//     events = [
//       RecentEvent(
//         title: 'Annual Sports Day',
//         date: DateTime(2024, 11, 15),
//         category: 'sports',
//         participants: 150,
//       ),
//       RecentEvent(
//         title: 'Science Fair Exhibition',
//         date: DateTime(2024, 10, 20),
//         category: 'academic',
//         participants: 80,
//       ),
//       // ...Add rest of your mock event data
//     ];
//   }

//   List<GalleryPhoto> get filteredPhotos {
//     return photos.where((p) {
//       final matchesCategory =
//           categoryFilter == 'all' || p.category == categoryFilter;
//       final matchesYear =
//           yearFilter == 'all' || p.date.year.toString() == yearFilter;
//       final matchesSearch =
//           searchTerm.isEmpty ||
//           p.title.toLowerCase().contains(searchTerm) ||
//           p.description.toLowerCase().contains(searchTerm) ||
//           p.event.toLowerCase().contains(searchTerm);
//       return matchesCategory && matchesYear && matchesSearch;
//     }).toList();
//   }

//   Widget statCard(String emoji, int number, String label) {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         margin: const EdgeInsets.symmetric(horizontal: 5),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(25),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 12,
//               offset: Offset(0, 6),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Text(emoji, style: const TextStyle(fontSize: 38)),
//             const SizedBox(height: 7),
//             Text(
//               number.toString(),
//               style: const TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xff333333),
//               ),
//             ),
//             const SizedBox(height: 3),
//             Text(
//               label,
//               style: TextStyle(
//                 color: Colors.grey[700],
//                 fontWeight: FontWeight.w500,
//                 fontSize: 15,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget statBar(String label, int percent) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [Text(label), Text("$percent%")],
//           ),
//           const SizedBox(height: 3),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: LinearProgressIndicator(
//               value: percent / 100,
//               backgroundColor: const Color(0xffe9ecef),
//               valueColor: AlwaysStoppedAnimation(const Color(0xff764ba2)),
//               minHeight: 8,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void showImageModal(GalleryPhoto photo) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return Dialog(
//           backgroundColor: Colors.transparent,
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             width: 700,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   decoration: const BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Color(0xff667eea), Color(0xff764ba2)],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15),
//                     ),
//                   ),
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 18,
//                     horizontal: 22,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         photo.title,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//                       GestureDetector(
//                         child: const Icon(
//                           Icons.close,
//                           color: Colors.white,
//                           size: 30,
//                         ),
//                         onTap: () => Navigator.of(context).pop(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(30),
//                   child: Column(
//                     children: [
//                       Text(photo.image, style: const TextStyle(fontSize: 80)),
//                       const SizedBox(height: 12),
//                       Text(
//                         photo.title,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 19,
//                         ),
//                       ),
//                       const SizedBox(height: 7),
//                       Text(
//                         photo.description,
//                         style: const TextStyle(
//                           color: Colors.grey,
//                           fontSize: 15,
//                         ),
//                       ),
//                       const SizedBox(height: 17),
//                       Wrap(
//                         spacing: 14,
//                         runSpacing: 14,
//                         children: [
//                           cardInfo('Event', photo.event),
//                           cardInfo(
//                             'Date',
//                             "${photo.date.year}-${photo.date.month}-${photo.date.day}",
//                           ),
//                           cardInfo('Location', photo.location),
//                           cardInfo(
//                             'Participants',
//                             photo.participants.toString(),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget cardInfo(String label, String value) {
//     return Container(
//       padding: const EdgeInsets.all(13),
//       decoration: BoxDecoration(
//         color: const Color(0xfff8f9fa),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text("$label: $value"),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final totalPhotos = photos.length;
//     final totalEvents = photos.where((p) => p.category == 'events').length;
//     final totalActivities = photos
//         .where((p) => p.category == 'activities')
//         .length;
//     final thisMonth = photos
//         .where(
//           (p) =>
//               p.date.year == DateTime.now().year &&
//               p.date.month == DateTime.now().month,
//         )
//         .length;

//     return Scaffold(
//       backgroundColor: const Color(0xfff8f9fa),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Header
//               Container(
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Color(0xff667eea),
//                       Color(0xff764ba2),
//                       Color(0xfff093fb),
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 25,
//                     vertical: 18,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(
//                         "🏫 School Management System",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 24,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Container(
//                             width: 40,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.2),
//                               shape: BoxShape.circle,
//                             ),
//                             child: const Center(
//                               child: Text(
//                                 '👨‍👩‍👧‍👦',
//                                 style: TextStyle(fontSize: 19),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 13),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 'Parent User',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                               Text(
//                                 'Parent/Student',
//                                 style: TextStyle(
//                                   color: Colors.white70,
//                                   fontSize: 13,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 13),
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.white.withOpacity(0.2),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               foregroundColor: Colors.white,
//                               elevation: 0,
//                             ),
//                             onPressed: () {},
//                             child: const Text('Logout'),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // Page Title & Back
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 32,
//                   vertical: 20,
//                 ),
//                 child: Row(
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xff667eea),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         foregroundColor: Colors.white,
//                         elevation: 0,
//                       ),
//                       onPressed: () {}, // TODO: Implement Back behavior
//                       child: const Text("← Back"),
//                     ),
//                     const SizedBox(width: 14),
//                     Text(
//                       "School Gallery",
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         foreground: Paint()
//                           ..shader = LinearGradient(
//                             colors: [Color(0xff667eea), Color(0xff764ba2)],
//                           ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // Stat Cards
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 32,
//                   vertical: 6,
//                 ),
//                 child: Row(
//                   children: [
//                     statCard('📸', totalPhotos, 'Total Photos'),
//                     statCard('🎉', totalEvents, 'Events'),
//                     statCard('🏆', totalActivities, 'Activities'),
//                     statCard('📅', thisMonth, 'This Month'),
//                   ],
//                 ),
//               ),

//               // Main grid for gallery and sidebar
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 32,
//                   vertical: 16,
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Gallery Section
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(15),
//                           boxShadow: [
//                             BoxShadow(color: Colors.black12, blurRadius: 16),
//                           ],
//                         ),
//                         padding: const EdgeInsets.all(28),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Filters
//                             Row(
//                               children: [
//                                 // Category
//                                 filterDropdown(
//                                   'Category',
//                                   categoryFilter,
//                                   {
//                                     'all': 'All Categories',
//                                     'events': 'Events',
//                                     'activities': 'Activities',
//                                     'campus': 'Campus',
//                                     'sports': 'Sports',
//                                     'academic': 'Academic',
//                                   },
//                                   (v) => setState(() => categoryFilter = v),
//                                 ),
//                                 const SizedBox(width: 12),
//                                 // Year
//                                 filterDropdown(
//                                   'Year',
//                                   yearFilter,
//                                   {
//                                     'all': 'All Years',
//                                     '2024': '2024',
//                                     '2023': '2023',
//                                     '2022': '2022',
//                                   },
//                                   (v) => setState(() => yearFilter = v),
//                                 ),
//                                 const SizedBox(width: 12),
//                                 // Search
//                                 Expanded(
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(13),
//                                       border: Border.all(
//                                         color: Color(0xffe2e2e2),
//                                       ),
//                                     ),
//                                     child: TextField(
//                                       decoration: const InputDecoration(
//                                         border: InputBorder.none,
//                                         contentPadding: EdgeInsets.symmetric(
//                                           horizontal: 16,
//                                         ),
//                                         hintText: "Search gallery...",
//                                       ),
//                                       onChanged: (v) => setState(
//                                         () => searchTerm = v.toLowerCase(),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),

//                             const SizedBox(height: 21),
//                             // Gallery Grid
//                             GridView.count(
//                               crossAxisCount:
//                                   MediaQuery.of(context).size.width > 900
//                                   ? 3
//                                   : 1,
//                               childAspectRatio: 1.2,
//                               shrinkWrap: true,
//                               physics: const NeverScrollableScrollPhysics(),
//                               mainAxisSpacing: 19,
//                               crossAxisSpacing: 19,
//                               children: [
//                                 for (var photo in filteredPhotos)
//                                   galleryCard(photo),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     // Sidebar
//                     const SizedBox(width: 30),
//                     Expanded(
//                       flex: 1,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Recent Events
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(15),
//                               boxShadow: [
//                                 BoxShadow(color: Colors.black12, blurRadius: 8),
//                               ],
//                             ),
//                             padding: const EdgeInsets.all(22),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: const [
//                                     Icon(
//                                       Icons.calendar_today,
//                                       color: Color(0xff764ba2),
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(
//                                       "Recent Events",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 17,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 10),
//                                 ...events.map((e) => eventCard(e)),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 18),
//                           // Gallery Statistics
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(15),
//                               boxShadow: [
//                                 BoxShadow(color: Colors.black12, blurRadius: 8),
//                               ],
//                             ),
//                             padding: const EdgeInsets.all(22),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: const [
//                                     Icon(
//                                       Icons.bar_chart,
//                                       color: Color(0xff764ba2),
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(
//                                       "Gallery Statistics",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 17,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 statBar('Events Coverage', 95),
//                                 statBar('Student Participation', 88),
//                                 statBar('Photo Quality', 92),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Dropdown for filters
//   Widget filterDropdown(
//     String label,
//     String selected,
//     Map<String, String> items,
//     void Function(String) onChanged,
//   ) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(13),
//         border: Border.all(color: Color(0xffe2e2e2), width: 1.3),
//       ),
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: DropdownButton<String>(
//         value: selected,
//         items: items.entries
//             .map((e) => DropdownMenuItem(value: e.key, child: Text(e.value)))
//             .toList(),
//         onChanged: (v) => onChanged(v!),
//         underline: const SizedBox(),
//         icon: const Icon(Icons.keyboard_arrow_down),
//       ),
//     );
//   }

//   // Gallery Card
//   Widget galleryCard(GalleryPhoto photo) {
//     return GestureDetector(
//       onTap: () => showImageModal(photo),
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//             colors: [Color(0xfff8f9fa), Color(0xffe9ecef)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 9,
//               offset: Offset(0, 6),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 width: double.infinity,
//                 height: 120,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff667eea), Color(0xff764ba2)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     photo.image,
//                     style: const TextStyle(fontSize: 50, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(13),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 4,
//                       horizontal: 13,
//                     ),
//                     decoration: BoxDecoration(
//                       gradient: const LinearGradient(
//                         colors: [Color(0xff667eea), Color(0xff764ba2)],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Text(
//                       photo.category[0].toUpperCase() +
//                           photo.category.substring(1),
//                       style: const TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                   const SizedBox(height: 7),
//                   Text(
//                     photo.title,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     "${photo.date.year}-${photo.date.month}-${photo.date.day}",
//                     style: TextStyle(color: Colors.grey[600], fontSize: 13),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     photo.description,
//                     style: TextStyle(color: Colors.grey[700], fontSize: 13),
//                   ),
//                   const SizedBox(height: 12),
//                   Row(
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xff667eea),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           foregroundColor: Colors.white,
//                           elevation: 0,
//                         ),
//                         onPressed: () => showImageModal(photo),
//                         child: const Text("View Full"),
//                       ),
//                       const SizedBox(width: 9),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xff764ba2),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           foregroundColor: Colors.white,
//                           elevation: 0,
//                         ),
//                         onPressed: () =>
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text('Downloading: ${photo.title}'),
//                               ),
//                             ),
//                         child: const Text("Download"),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Event Card
//   Widget eventCard(RecentEvent event) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//         border: Border(left: BorderSide(color: Color(0xff28a745), width: 4)),
//       ),
//       padding: const EdgeInsets.all(13),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             event.title,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
//           ),
//           Text(
//             "${event.date.year}-${event.date.month}-${event.date.day}",
//             style: TextStyle(color: Colors.grey[700], fontSize: 13),
//           ),
//           Text(
//             "Category: ${event.category[0].toUpperCase() + event.category.substring(1)} • Participants: ${event.participants}",
//             style: TextStyle(color: Colors.grey[600], fontSize: 13),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Mobile Version of Gallery Page
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(
  const MaterialApp(
    home: SchoolGalleryPage(),
    debugShowCheckedModeBanner: false,
  ),
);

// Reusing your data models
class GalleryPhoto {
  final int id;
  final String title;
  final String category;
  final DateTime date;
  final String description;
  final String image; // Emoji
  final String event;
  final int participants;
  final String location;

  GalleryPhoto({
    required this.id,
    required this.title,
    required this.category,
    required this.date,
    required this.description,
    required this.image,
    required this.event,
    required this.participants,
    required this.location,
  });
}

class RecentEvent {
  final String title;
  final DateTime date;
  final String category;
  final int participants;

  RecentEvent({
    required this.title,
    required this.date,
    required this.category,
    required this.participants,
  });
}

class SchoolGalleryPage extends StatefulWidget {
  const SchoolGalleryPage({super.key});

  @override
  State<SchoolGalleryPage> createState() => _SchoolGalleryPageState();
}

class _SchoolGalleryPageState extends State<SchoolGalleryPage> {
  late List<GalleryPhoto> photos;
  late List<RecentEvent> events;
  String categoryFilter = 'all';
  String yearFilter = 'all';
  String searchTerm = '';
  String sortCriteria = 'date_desc'; // Default: newest first

  @override
  void initState() {
    super.initState();
    // Added emojis for a better mobile visual
    photos = [
      GalleryPhoto(
        id: 1,
        title: 'Annual Sports Day',
        category: 'sports',
        date: DateTime(2024, 11, 15),
        description:
            "Annual Sports Day promotes fitness, fun, and friendly competition.",
        image: '🏅',
        event: 'Sports Day 2024',
        participants: 150,
        location: 'School Ground',
      ),
      GalleryPhoto(
        id: 2,
        title: 'Science Fair Exhibition',
        category: 'academic',
        date: DateTime(2024, 10, 20),
        description:
            'Students display creative and innovative projects at exhibition.',
        image: '🧪',
        event: 'Science Fair 2024',
        participants: 80,
        location: 'School Auditorium',
      ),
      GalleryPhoto(
        id: 3,
        title: "Food Festival",
        category: "activities",
        date: DateTime(2024, 10, 31),
        description:
            "Students enjoy diverse and delicious cuisines at the festival.",
        image: '🍕',
        event: "Food Festival 2024",
        participants: 100,
        location: "School Canteen",
      ),
      GalleryPhoto(
        id: 4,
        title: "Campus Tour",
        category: "campus",
        date: DateTime(2024, 9, 10),
        description: "New students getting familiar with the school premises.",
        image: '🏫',
        event: "Orientation",
        participants: 50,
        location: "Main Block",
      ),
      GalleryPhoto(
        id: 5,
        title: "Art Workshop",
        category: "activities",
        date: DateTime(2023, 12, 5),
        description: "Creative drawing and painting session for all grades.",
        image: '🎨',
        event: "Art Week",
        participants: 65,
        location: "Art Room",
      ),
    ];
    events = [
      RecentEvent(
        title: 'Annual Sports Day',
        date: DateTime(2024, 11, 15),
        category: 'sports',
        participants: 150,
      ),
      RecentEvent(
        title: 'Science Fair',
        date: DateTime(2024, 10, 20),
        category: 'academic',
        participants: 80,
      ),
      RecentEvent(
        title: 'Food Festival',
        date: DateTime(2024, 10, 31),
        category: 'activities',
        participants: 100,
      ),
    ];
  }

  List<GalleryPhoto> get filteredPhotos {
    var list = photos.where((p) {
      final matchesCategory =
          categoryFilter == 'all' || p.category == categoryFilter;
      final matchesYear =
          yearFilter == 'all' || p.date.year.toString() == yearFilter;
      final matchesSearch =
          searchTerm.isEmpty ||
          p.title.toLowerCase().contains(searchTerm) ||
          p.description.toLowerCase().contains(searchTerm) ||
          p.event.toLowerCase().contains(searchTerm);
      return matchesCategory && matchesYear && matchesSearch;
    }).toList();

    // Apply sorting
    list.sort((a, b) {
      switch (sortCriteria) {
        case 'date_asc':
          return a.date.compareTo(b.date);
        case 'title_asc':
          return a.title.toLowerCase().compareTo(b.title.toLowerCase());
        case 'title_desc':
          return b.title.toLowerCase().compareTo(a.title.toLowerCase());
        case 'date_desc': // Default
        default:
          return b.date.compareTo(a.date);
      }
    });

    return list;
  }

  // --- Widget Methods for Mobile View ---

  Widget _buildStatCards(
    int totalPhotos,
    int totalEvents,
    int totalActivities,
    int thisMonth,
  ) {
    // Consolidated stats into a horizontal list view for mobile
    final stats = [
      {'emoji': '📸', 'number': totalPhotos, 'label': 'Total Photos'},
      {'emoji': '🎉', 'number': totalEvents, 'label': 'Events'},
      {'emoji': '🏆', 'number': totalActivities, 'label': 'Activities'},
      {'emoji': '📅', 'number': thisMonth, 'label': 'This Month'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 120, // Define height for horizontal scroll
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stats.length,
          itemBuilder: (context, index) {
            final stat = stats[index];
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Container(
                width: 140, // Fixed width for mobile cards
                // 💥 FIX APPLIED HERE: Reduced vertical padding inside the card
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      stat['emoji'] as String,
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      stat['number'].toString(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                    Text(
                      stat['label'] as String,
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                      // Added maxLines to be extra safe on wrapping issues
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSearchAndFilters() {
    return Padding(
      // Consolidated padding for safety
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
      child: Column(
        children: [
          // Search Bar (Full Width)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: const Color(0xffe2e2e2)),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade100, blurRadius: 5),
              ],
            ),
            child: TextField(
              decoration: const InputDecoration(
                icon: Icon(Icons.search, color: Color(0xff764ba2)),
                border: InputBorder.none,
                hintText: "Search title, event, or description...",
              ),
              onChanged: (v) => setState(() => searchTerm = v.toLowerCase()),
            ),
          ),
          const SizedBox(height: 12),

          // Filters (Horizontal Scrollable Row)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterDropdown(
                  'Category',
                  categoryFilter,
                  {
                    'all': 'All Categories',
                    'events': 'Events',
                    'activities': 'Activities',
                    'campus': 'Campus',
                    'sports': 'Sports',
                    'academic': 'Academic',
                  },
                  (v) => setState(() => categoryFilter = v),
                ),
                const SizedBox(width: 12),
                _buildFilterDropdown('Year', yearFilter, {
                  'all': 'All Years',
                  '2024': '2024',
                  '2023': '2023',
                  '2022': '2022',
                }, (v) => setState(() => yearFilter = v)),
                const SizedBox(width: 12),
                // Sort By
                _buildFilterDropdown('Sort By', sortCriteria, {
                  'date_desc': 'Newest First',
                  'date_asc': 'Oldest First',
                  'title_asc': 'Title (A-Z)',
                  'title_desc': 'Title (Z-A)',
                }, (v) => setState(() => sortCriteria = v)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterDropdown(
    String label,
    String selected,
    Map<String, String> items,
    void Function(String) onChanged,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: const Color(0xffe2e2e2), width: 1.3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selected,
          items: items.entries
              .map((e) => DropdownMenuItem(value: e.key, child: Text(e.value)))
              .toList(),
          onChanged: (v) => onChanged(v!),
          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xff764ba2)),
        ),
      ),
    );
  }

  Widget _buildGalleryGrid() {
    final photos = filteredPhotos;
    if (photos.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Text(
            "No photos found matching the filters. Try adjusting your search!",
          ),
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns is optimal for most phones
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio:
            0.62, // Aspect ratio to ensure space for the whole grid
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) => _buildGalleryCard(photos[index]),
    );
  }

  Widget _buildGalleryCard(GalleryPhoto photo) {
    final dateFormatter = DateFormat('MMM dd, yyyy');
    return GestureDetector(
      onTap: () => _showImageModal(photo),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image/Emoji Placeholder Area
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff667eea), Color(0xff764ba2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                ),
                child: Center(
                  child: Text(
                    photo.image.isEmpty ? '📷' : photo.image,
                    style: const TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
            ),

            // Text Content Area
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          photo.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          photo.category[0].toUpperCase() +
                              photo.category.substring(1),
                          style: const TextStyle(
                            color: Color(0xff764ba2),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dateFormatter.format(photo.date),
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff667eea),
                              foregroundColor: Colors.white,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                            ),
                            onPressed: () => _showImageModal(photo),
                            child: const Text(
                              "View Details",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Refactored Modal for mobile readability (using showModalBottomSheet is often better, but keeping Dialog for now)
  void _showImageModal(GalleryPhoto photo) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          titlePadding: EdgeInsets.zero,
          contentPadding: const EdgeInsets.all(20),
          // Custom header for style
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff667eea), Color(0xff764ba2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    photo.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GestureDetector(
                  child: const Icon(Icons.close, color: Colors.white, size: 28),
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  photo.image.isEmpty ? '📷' : photo.image,
                  style: const TextStyle(fontSize: 70),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                photo.description,
                style: const TextStyle(color: Colors.black87, fontSize: 14),
              ),
              const Divider(height: 25),

              // Key Info section
              _modalInfoRow('Event:', photo.event),
              _modalInfoRow(
                'Date:',
                DateFormat('yyyy-MM-dd').format(photo.date),
              ),
              _modalInfoRow('Location:', photo.location),
              _modalInfoRow('Participants:', photo.participants.toString()),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff764ba2),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Downloading: ${photo.title}')),
                    );
                  },
                  icon: const Icon(Icons.download),
                  label: const Text("Download Photo"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper for Modal Info Rows
  Widget _modalInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(value, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  // Build Recent Events List (now full width)
  Widget _buildRecentEvents() {
    final dateFormatter = DateFormat('MMM dd');
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.calendar_today, color: Color(0xff764ba2)),
              SizedBox(width: 8),
              Text(
                "Recent Events",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
          const Divider(height: 20),
          ...events.map(
            (e) => Card(
              margin: const EdgeInsets.only(bottom: 10),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xff28a745).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    dateFormatter.format(e.date),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff28a745),
                    ),
                  ),
                ),
                title: Text(
                  e.title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Category: ${e.category[0].toUpperCase() + e.category.substring(1)} • ${e.participants} Participants",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build Gallery Statistics (now full width)
  Widget _buildGalleryStatistics() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.bar_chart, color: Color(0xff764ba2)),
              SizedBox(width: 8),
              Text(
                "Gallery Statistics",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
          const Divider(height: 20),
          _statBar('Events Coverage', 95, const Color(0xff667eea)),
          _statBar('Student Participation', 88, const Color(0xff764ba2)),
          _statBar('Photo Quality', 92, const Color(0xfff093fb)),
        ],
      ),
    );
  }

  Widget _statBar(String label, int percent, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
              Text("$percent%"),
            ],
          ),
          const SizedBox(height: 3),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: percent / 100,
              backgroundColor: const Color(0xffe9ecef),
              valueColor: AlwaysStoppedAnimation(color),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Stat calculations re-used
    final totalPhotos = photos.length;
    final totalEvents = photos.where((p) => p.category == 'events').length;
    final totalActivities = photos
        .where((p) => p.category == 'activities')
        .length;
    final thisMonth = photos
        .where(
          (p) =>
              p.date.year == DateTime.now().year &&
              p.date.month == DateTime.now().month,
        )
        .length;

    return Scaffold(
      backgroundColor: const Color(0xfff8f9fa),
      appBar: AppBar(
        title: const Text(
          "School Gallery 📸",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff667eea),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Back to Dashboard'))),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () => ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('User Profile'))),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Mobile Stat Cards (Horizontal Scrollable)
            const SizedBox(height: 10), // Top buffer
            _buildStatCards(
              totalPhotos,
              totalEvents,
              totalActivities,
              thisMonth,
            ),

            const SizedBox(height: 12), // Spacing below stat cards
            // 2. Search and Filters
            _buildSearchAndFilters(),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "Gallery Highlights",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                ),
              ),
            ),

            // 3. Gallery Grid (2 columns)
            _buildGalleryGrid(),

            const SizedBox(height: 20),

            // 4. Sidebar Content (Stacked Vertically)
            _buildRecentEvents(),

            _buildGalleryStatistics(),

            const SizedBox(height: 20), // Bottom padding
          ],
        ),
      ),
    );
  }
}
