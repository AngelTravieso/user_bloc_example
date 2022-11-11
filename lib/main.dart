import 'package:flutter/material.dart';
import 'package:bloc_example/bloc/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_example/pages/pagina1_page.dart';
import 'package:bloc_example/pages/pagina2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // colocar el bloc en el punto mas alto de la aplicacion

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc Example',
        initialRoute: Pagina1Page.routeName,
        routes: {
          Pagina1Page.routeName: (_) => const Pagina1Page(),
          Pagina2Page.routeName: (_) => const Pagina2Page(),
        },
      ),
    );
  }
}
