import 'package:flutter/material.dart';
import 'package:infinite_list_bloc/posts/models/post.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  const PostListItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: Text(
          '${post.id}',
          style: const TextStyle(fontSize: 20),
        ),
        title: Text(post.title, style: const TextStyle(fontSize: 20)),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
