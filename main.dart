import 'package:flutter/material.dart';
import 'screens/lock_screen.dart';
void main() {
runApp(const DarbyApp());
}
class DarbyApp extends StatelessWidget {
const DarbyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Darby',
theme: ThemeData(
primarySwatch: Colors.blueGrey,
),
home: const LockScreen(),
debugShowCheckedModeBanner: false,
);
}
}