import 'package:delivery_food/models/models.dart';
import 'package:delivery_food/widgets/restaurent_tags.dart';
import 'package:flutter/material.dart';

class RestaurentInformation extends StatelessWidget {
  final Restaurent restaurent;
  const RestaurentInformation({
    Key? key,
    required this.restaurent,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurent.name,
            style: Theme.of(context).textTheme.headline3!.copyWith(
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RestaurentTags(restaurent: restaurent),
          SizedBox(
            height: 5,
          ),
          Text(
            '${restaurent.distance}Km away - \$${restaurent.deliveryFee} delivery fee',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Restaurent Information',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

}