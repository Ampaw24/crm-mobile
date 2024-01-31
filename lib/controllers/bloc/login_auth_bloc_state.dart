part of 'login_auth_bloc_bloc.dart';

@immutable
sealed class LoginAuthBlocState {}

final class LoginAuthBlocInitial extends LoginAuthBlocState {}
final class LoginLoading extends LoginAuthBlocState {}
final class LoginError extends LoginAuthBlocState {}
final class LoginSuccess extends LoginAuthBlocState {}
