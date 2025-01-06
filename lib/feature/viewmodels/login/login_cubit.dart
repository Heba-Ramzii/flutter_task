import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:untitled2/feature/model/user_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());


  Future<void> login(UserModel user) async {
    try {
      final dio = Dio();
      final response = await dio.post(
        "http://92.205.160.52:1090/API/User/Login",
        data: user.toJson(),
      );

      if (response.statusCode == 200) {
        emit(LoginSuccess(response.data));
      } else {
        emit(LoginFailure('Login failed.'));
      }
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }

}
