import 'package:bloc_example/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_example/bloc/user/user_bloc.dart';

class Pagina2Page extends StatelessWidget {
  static String routeName = 'pagina2';
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    // obtener instancia del bloc
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                final newUser = User(
                  nombre: 'Angel',
                  edad: 22,
                  profesiones: ['FullStack Developer'],
                );

                userBloc.add(ActivateUser(newUser));
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                userBloc.add(ChangeUserAge(30));
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                'Añadir Profesion',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                userBloc.add(AddProfession('Musico'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
