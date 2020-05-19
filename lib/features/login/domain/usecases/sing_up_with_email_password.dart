import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/login_repository.dart';
import 'sing_in_with_email_password.dart';

class SignUpWithEmailAndPassword extends UseCase<User, LoginParams> {
  final LoginRepository repository;

  SignUpWithEmailAndPassword({@required this.repository});

  @override
  Future<Either<Failure, User>> call(LoginParams params) {
    return repository.signUpWithEmailAndPassword(params.email, params.password);
  }
}
