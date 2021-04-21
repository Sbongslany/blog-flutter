import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/Blog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.78,
                  child: Image.asset(blogPosts[0].image),
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Design".toUpperCase(),
                            style: TextStyle(
                                color: kDarkBlackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: kDefaultPadding),
                          Text(
                            blogPosts[0].date,
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          blogPosts[0].title,
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Raleway',
                            color: kDarkBlackColor,
                            height: 1.3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        blogPosts[0].description,
                        maxLines: 4,
                        style: TextStyle(height: 1.5),
                      ),
                      SizedBox(height: kDefaultPadding),
                      Row(
                        children: [
                          TextButton(onPressed: () {}, child: Text('Read More'))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
        SizedBox(width: kDefaultPadding),
        Expanded(
            child: Container(
          height: 400,
          color: Colors.blueGrey,
        )),
      ],
    );
  }
}
