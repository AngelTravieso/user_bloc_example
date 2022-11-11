// Acciones que cambian el state
part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

// Activar usuario
class ActivateUser extends UserEvent {
  final User user;

  ActivateUser(this.user);
}

// Cambiar edad
class ChangeUserAge extends UserEvent {
  final int age;

  ChangeUserAge(this.age);
}

// Agregar profesion
class AddProfession extends UserEvent {
  final String profession;

  AddProfession(this.profession);
}

class DeleteUser extends UserEvent {
  
}