import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malab/core/services/firebase_auth_service.dart';
import 'package:malab/features/auth/data/repos/firebase_auth_repo_impl.dart';
import 'package:malab/features/auth/ui/manager/auth/auth_cubit.dart';
import 'package:malab/features/auth/ui/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(
        authRepo: FirebaseAuthRepoImpl(
          firebaseAuthService: FirebaseAuthService(),
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const SignUpViewBody(),
          ),
        ),
      ),
    );
  }
}
