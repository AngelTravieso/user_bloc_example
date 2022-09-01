part of 'user_bloc.dart';

// Eventos para manejar el estado

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;

  ActivateUser(this.user);
}


