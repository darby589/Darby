import 'package:flutter/material.dart';
import 'settings_screen.dart';
class HomeScreen extends StatelessWidget {
const HomeScreen({Key? key}) : super(key: key);
final List<String> categories = const [
'Photos',
'Videos',
'PDFs',
'Documents',
'Medical Documents',
'Passwords',
];
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Darby'),
),
body: ListView.builder(
padding: const EdgeInsets.all(16),
itemCount: categories.length,
itemBuilder: (context, index) {
return Card(
child: ListTile(
title: Text(categories[index]),
trailing: const Icon(Icons.arrow_forward_ios),
onTap: () {
// TODO: Implement file category screens
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('${categories[index]} tapped')),
);
},
),
);
},
),
drawer: Drawer(
child: ListView(
children: [
const DrawerHeader(
child: Text('Darby Settings', style: TextStyle(fontSize: 24)),
),
ListTile(
leading: const Icon(Icons.settings),
title: const Text('Settings'),
onTap: () {
Navigator.push(context,
MaterialPageRoute(builder: (_) => const SettingsScreen()));
},
),
],
),
),
);
}
}