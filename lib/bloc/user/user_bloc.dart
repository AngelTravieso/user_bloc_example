// Tiene la informacion del estado actual y procesa los eventos

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:bloc_example/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  // estado inicial
  UserBloc() : super(const UserInitialState()) {
    // emit, emitir un nuevo estado de manera condicional
    on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));

    on<DeleteUser>((event, emit) => emit(const UserInitialState()));

    on<ChangeUserAge>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });

    on<AddProfession>((event, emit) {
      if (!state.existUser) return;

      final professions = [...state.user!.profesiones, event.profession];

      emit(UserSetState(state.user!.copyWith(profesiones: professions)));
    });
  }
}
