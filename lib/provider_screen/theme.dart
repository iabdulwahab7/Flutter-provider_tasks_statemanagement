import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/theme_provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen Theme'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            RadioListTile<ThemeMode>(
                title: Text('Light Mode'),
                value: ThemeMode.light,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            RadioListTile<ThemeMode>(
                title: Text('Dark Mode'),
                value: ThemeMode.dark,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            RadioListTile<ThemeMode>(
                title: Text('System Mode'),
                value: ThemeMode.system,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
          ],
        ));
  }
}
