import 'package:flutter/material.dart';
import '../models/restaurent_model.dart';

class RestaurentTags extends StatelessWidget {
  const RestaurentTags({
    Key? key,
    required this.restaurent,
  }) : super(key: key);

  final Restaurent restaurent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: restaurent.tags
          .map(
            (tag) => restaurent.tags.indexOf(tag) == restaurent.tags.length - 1
            ? Text(
              tag,
              style: Theme.of(context).textTheme.bodyText1,
            )
            : Text(
              '$tag, ',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )
          .toList(),
    );
  }
}