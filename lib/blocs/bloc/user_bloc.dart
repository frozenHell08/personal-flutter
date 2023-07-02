import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial(users: [])) {
    on<AddUser>(_addUser);
    on<DeleteUser>(_deleteUser);
    on<UpdateUser>(_updateUser);
    // on<UserEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }

  void _addUser(AddUser event, Emitter<UserState> emit) {
    state.users.add(event.user);
    emit(UserUpdated(users: state.users));
  }

  void _deleteUser(DeleteUser event, Emitter<UserState> emit) {
    state.users.remove(event.user);
    emit(UserUpdated(users: state.users)); 
  }

  void _updateUser(UpdateUser event, Emitter<UserState> emit) {
    //update

    emit(UserUpdated(users: state.users));
  }
}
