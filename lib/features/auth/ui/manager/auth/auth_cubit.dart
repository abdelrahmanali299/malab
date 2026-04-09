import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:malab/features/auth/data/models/player_model.dart';
import 'package:malab/features/auth/data/repos/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;

  AuthCubit({required AuthRepo authRepo})
    : _authRepo = authRepo,
      super(AuthInitial());

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(AuthLoading());
    final result = await _authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(AuthFailure(failure.message)),
      (player) => emit(AuthSuccess(player)),
    );
  }

  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    emit(AuthLoading());
    final result = await _authRepo.signUpWithEmailAndPassword(
      email,
      password,
      name,
    );
    result.fold(
      (failure) => emit(AuthFailure(failure.message)),
      (player) => emit(AuthSuccess(player)),
    );
  }
}
