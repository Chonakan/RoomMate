import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'welcome.dart';

import 'package:roommate_app_project/blocs/auth_bloc.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'FacebookLogin',
        home: Welcomepage(),
      ),
    );
  }
}
