import 'package:flutter/material.dart';
import '../utils/storage.dart';
class SettingsScreen extends StatefulWidget {
const SettingsScreen({Key? key}) : super(key: key);
@override
State<SettingsScreen> createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {
final _pinController = TextEditingController();
String _status = '';
Future<void> _changePin() async {
final newPin = _pinController.text;
if (newPin.length == 5) {
await Storage.savePin(newPin);
setState(() {
_status = 'PIN changed successfully!';
});
_pinController.clear();
} else {
setState(() {
_status = 'PIN must be exactly 5 digits.';
});
}
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Settings'),
),
body: Padding(
padding: const EdgeInsets.all(20),
child: Column(
children: [
const Text('Change 5-digit PIN:', style: TextStyle(fontSize: 18)),
TextField(
controller: _pinController,
maxLength: 5,
keyboardType: TextInputType.number,
obscureText: true,
decoration: const InputDecoration(
border: OutlineInputBorder(),
counterText: '',
hintText: 'New PIN',
),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: _changePin,
child: const Text('Save PIN'),
),
const SizedBox(height: 20),
Text(_status, style: const TextStyle(color: Colors.green)),
],
),
),
);
}
}