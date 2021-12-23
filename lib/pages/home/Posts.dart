import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwg/blocs/posts/PostCubit.dart';
import 'package:kwg/blocs/posts/PostState.dart';
import 'package:kwg/config/Palette.dart';
import 'package:kwg/widgets/Post.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (BuildContext context, int index) {
              if (state.posts.length <= 25 || state.posts.length >= 100) {
                final post = state.posts[index];
                print(state.posts);
                return Post(
                  title: post['name'],
                  bodyText: post['body'],
                  email: post['email'],
                );
              } else {
                return Container(
                  child: Center(
                      child: Text(
                    'Posts are below the expected length',
                    style: TextStyle(
                      color: Palette.titleTextColor,
                      fontSize: 16,
                      fontFamily: 'Poppins-SemiBold',
                    ),
                  )),
                );
              }
            },
          ),
        );
      },
    );
  }
}
