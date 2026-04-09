import 'package:dartz/dartz.dart';
import 'package:malab/core/errors/custom_exception.dart';
import 'package:malab/core/services/firebase_auth_service.dart';
import 'package:malab/features/auth/data/models/player_model.dart';
import 'package:malab/features/auth/data/repos/auth_repo.dart';

class FirebaseAuthRepoImpl extends AuthRepo {
  final FirebaseAuthService _firebaseAuthService;

  FirebaseAuthRepoImpl({required FirebaseAuthService firebaseAuthService})
    : _firebaseAuthService = firebaseAuthService;

  @override
  Future<Either<CustomException, PlayerModel>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final player = await _firebaseAuthService.signInWithEmailAndPassword(
        email,
        password,
      );
      return Right(player);
    } on CustomException catch (e) {
      return Left(e);
    } catch (_) {
      return Left(
        CustomException(message: 'Failed to sign in with email and password.'),
      );
    }
  }

  @override
  Future<Either<CustomException, PlayerModel>> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      final player = await _firebaseAuthService.signUpWithEmailAndPassword(
        email,
        password,
        name,
      );
      return Right(player);
    } on CustomException catch (e) {
      return Left(e);
    } catch (_) {
      return Left(
        CustomException(message: 'Failed to sign up with email and password.'),
      );
    }
  }
}
