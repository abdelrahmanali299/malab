import 'package:dartz/dartz.dart';
import 'package:malab/core/errors/custom_exception.dart';
import 'package:malab/features/auth/data/models/player_model.dart';

abstract class AuthRepo {
  Future<Either<CustomException, PlayerModel>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future<Either<CustomException, PlayerModel>> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
}
