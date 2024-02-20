import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/shoe.dart';
import '../model/shoe_shop.dart';

class ShoeStore extends StatelessWidget {
  const ShoeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Nike boys, we super fly. Cope the fliest kicks here',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10),

              //list of shoes to buy
              Expanded(
                child: ListView.builder(
                    itemCount: value.shoeShop.length,
                    itemBuilder: (context, index) {
                      //get individual shoe
                      Shoe pairOfShoe = value.shoeShop[index];

                      //return the tile for this each pairs of shoe available
                      return ListTile(
                        title: Text(pairOfShoe.name),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
