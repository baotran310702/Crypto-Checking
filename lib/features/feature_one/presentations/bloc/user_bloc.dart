import 'package:bloc/bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetUserEvent>(_onGetUserEvent);
  }

  _onGetUserEvent(GetUserEvent event, Emitter<UserState> emit) async {
    //emit any event here
  }
}
