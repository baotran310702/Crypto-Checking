part of 'user_bloc.dart';

abstract class UserEvent {}

class GetUserEvent extends UserEvent {
  final String id;

  GetUserEvent(this.id);
}
