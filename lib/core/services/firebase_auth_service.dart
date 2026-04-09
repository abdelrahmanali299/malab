import 'package:firebase_auth/firebase_auth.dart';
import 'package:malab/core/errors/custom_exception.dart';
import 'package:malab/features/auth/data/models/player_model.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<PlayerModel> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final res = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = res.user;
      if (user == null) {
        throw CustomException(
          message: 'Failed to sign in with email and password.',
        );
      }
      return PlayerModel(
        id: user.uid,
        email: user.email ?? email,
        name: user.displayName ?? '',
      );
    } on FirebaseAuthException catch (e) {
      throw CustomException(
        message: e.message ?? 'Failed to sign in with email and password.',
      );
    } catch (_) {
      throw CustomException(
        message: 'Failed to sign in with email and password.',
      );
    }
  }

  Future<PlayerModel> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      final res = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = res.user;
      if (user == null) {
        throw CustomException(message: 'Failed to create account.');
      }
      await user.updateDisplayName(name);
      await user.reload();
      final updatedUser = _firebaseAuth.currentUser;
      return PlayerModel(
        id: updatedUser?.uid ?? user.uid,
        email: updatedUser?.email ?? email,
        name: updatedUser?.displayName ?? name,
      );
    } on FirebaseAuthException catch (e) {
      throw CustomException(
        message: e.message ?? 'Failed to sign up with email and password.',
      );
    } catch (_) {
      throw CustomException(
        message: 'Failed to sign up with email and password.',
      );
    }
  }
}
