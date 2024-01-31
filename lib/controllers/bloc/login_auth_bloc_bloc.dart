import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_auth_bloc_event.dart';
part 'login_auth_bloc_state.dart';

class LoginAuthBlocBloc extends Bloc<LoginAuthBlocEvent, LoginAuthBlocState> {
  LoginAuthBlocBloc() : super(LoginAuthBlocInitial()) {
    on<LoginAuthBlocEvent>((event, emit) {
      
    });
  }
}
