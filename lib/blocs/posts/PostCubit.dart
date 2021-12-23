import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:kwg/network/ApiResult.dart';
import 'package:kwg/providers/PostDataProvider.dart';

import 'PostState.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(this._postDataProvider) : super(PostState()) {
    getPosts();
  }

  late List posts;
  final PostDataProvider? _postDataProvider;

  Future<void> getPosts() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    ApiResult results = await _postDataProvider!.getPosts();
    results.when(success: (results) {
      emit(state.copyWith(status: FormzStatus.submissionSuccess, posts: results));
    }, failure: (e) {
      print(e);
    });
  }
}
