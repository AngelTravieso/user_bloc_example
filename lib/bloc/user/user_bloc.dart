import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:bloc_example/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    // Se llama el emit cuando quiero cambiar el estado
    on<ActivateUser>((event, emit) {
      
    });
  }
}
