import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class PostState extends Equatable {
  const PostState({
    this.posts = const [],
    this.status = FormzStatus.pure,
  });
  final List posts;
  final FormzStatus? status;
  @override
  List<Object?> get props => [posts, status];

  PostState copyWith({
    List? posts,
    FormzStatus? status,
  }) =>
      PostState(
        posts: posts ?? this.posts,
        status: status ?? this.status,
      );
}
