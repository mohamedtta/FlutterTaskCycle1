import 'package:flutter/material.dart';
import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  Product product = Product();
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.47,
        height: MediaQuery.of(context).size.height * 0.45,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  '${product.image}',
                  height: (MediaQuery.of(context).size.height * 0.45) * 0.5,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  right: 0,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Nike Air Jordan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${product.title!.substring(0,16)}",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "EGP ${product.price}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "EGP ${product.price}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                SizedBox(width: 5),
                Text(
                  "Review (${product.rate!.rate})",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ],
        ),
      )
    );
  }
}