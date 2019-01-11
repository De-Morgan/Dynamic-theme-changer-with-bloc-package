import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_changer/bloc/change_theme_bloc.dart';
import 'package:theme_changer/bloc/change_theme_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: changeThemeBloc,
      builder: (BuildContext context, ChangeThemeState state) {
        return MaterialApp(
          theme: state.themeData,
          home: Scaffold(
            appBar: AppBar(
              title: Text('Theme Changer'),
            ),
            body: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Dark Theme'),
                      onPressed: changeThemeBloc.onDarkThemeChange,
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    RaisedButton(
                      child: Text('Light Theme'),
                      onPressed: changeThemeBloc.onLightThemeChange,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
