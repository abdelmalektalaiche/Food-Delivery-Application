import 'package:delivery_food/models/models.dart';
import 'package:delivery_food/widgets/restaurent_information.dart';
import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget{

  static const String routeName = '/restaurant-details';

  static Route route({required Restaurent restaurent}) {
    return MaterialPageRoute(
      builder: (_) => RestaurantDetailsScreen(restaurent: restaurent),
      settings: RouteSettings(name: routeName),
    );
  }

  final Restaurent restaurent;

  const RestaurantDetailsScreen({
    required this.restaurent,
  });

  @override
  Widget build(BuildContext context) {
    Restaurent restaurent = Restaurent.restaurent[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Basket',
                ),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(MediaQuery.of(context).size.width, 50),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    restaurent.imageUrl,
                  ),
                ),
              ),
            ),
            RestaurentInformation(restaurent: restaurent),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurent.tags.length,
              itemBuilder: (context, index) {
                return _buildMenuItems(restaurent, context, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItems(Restaurent restaurent, BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10.0, 
          ),
          child: Text(
            restaurent.tags[index],
            style: Theme.of(context).textTheme.headline3!.copyWith(
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Column(
          children: restaurent.menuItems.where((menuItem) => menuItem.category == restaurent.tags[index]).map((menuItem) => 
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    menuItem.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  subtitle: Text(
                    menuItem.description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '\$${menuItem.price}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_circle,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {},
                      ),
                    ],  
                  ),
                ),
              ),
              Divider(
                height: 2,
              ),
            ],
          ),
          )
          .toList()
        ),
      ],
    );
  }
}