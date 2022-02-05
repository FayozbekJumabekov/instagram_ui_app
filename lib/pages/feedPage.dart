import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_app/models/post.dart';
import 'package:instagram_ui_app/models/story.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Story> stories = [
    Story(image: "assets/images/im_story1.jpg", name: "Chris"),
    Story(image: "assets/images/im_story2.jpg", name: "Leonardo"),
    Story(image: "assets/images/im_story3.jpeg", name: "Catherine"),
    Story(image: "assets/images/im_story4.jpeg", name: "Carter"),
    Story(image: "assets/images/im_story5.jpg", name: "Emma"),
    Story(image: "assets/images/im_story6.jpg", name: "Hermione"),
    Story(image: "assets/images/im_story7.jpg", name: "Susan"),
  ];

  List<Post> posts = [
    Post(
        accountImage: "assets/images/im_story6.jpg",
        postImage: "assets/images/post0.jpeg",
        name: "Hermione",
        likedBy: ["Leo", "Alexandr", "Stephan", "Christopher"],
        postDate: "February 2022",
        caption:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
    Post(
        accountImage: "assets/images/im_story5.jpg",
        postImage: "assets/images/post2.jpeg",
        name: "Emma",
        likedBy: ["John", "Alex", "Leo", "Christopher"],
        postDate: "January 2021",
        caption:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
    Post(
        accountImage: "assets/images/im_story4.jpeg",
        postImage: "assets/images/post1.jpeg",
        name: "Carter",
        likedBy: ["John", "Alex", "Leo", "Christopher"],
        postDate: "February 2021",
        caption:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
    Post(
        accountImage: "assets/images/im_story3.jpeg",
        postImage: "assets/images/post4.jpeg",
        name: "Catherine",
        likedBy: ["John", "Alex", "Leo", "Christopher"],
        postDate: "March 2022",
        caption:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
    Post(
        accountImage: "assets/images/im_story2.jpg",
        postImage: "assets/images/post5.jpeg",
        name: "Leanardo",
        likedBy: ["John", "Alex", "Leo", "Christopher"],
        postDate: "April 2020",
        caption:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
    Post(
        accountImage: "assets/images/im_story7.jpg",
        postImage: "assets/images/post6.jpeg",
        name: "Catherine",
        likedBy: ["John", "Alex", "Leo", "Christopher"],
        postDate: "January 2021",
        caption:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),

            /// #Watch All text
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.subtitle2?.color),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.subtitle2?.color),
                  )
                ],
              ),
            ),

            /// # Story List
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  itemCount: stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return storyItems(stories[index]);
                  }),
            ),
            Container(
              child: GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.9,
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (context, index) {
                    return postItems(posts[index]);
                  }),
            )
          ],
        ),
      ),
    ));
  }

  GridTile postItems(Post post) {
    return GridTile(
      header: Container(
        height: 60,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: GridTileBar(
          leading: CircleAvatar(
            backgroundImage: AssetImage(post.accountImage),
          ),
          title: Text(
            post.name,
            style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).textTheme.bodyText2!.color),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
      ),
      child: Image(fit: BoxFit.cover, image: AssetImage(post.postImage)),
      footer: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GridTileBar(
              leading: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.heart,
                        color: Theme.of(context).iconTheme.color,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.chat_bubble,
                        color: Theme.of(context).iconTheme.color,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.telegramPlane,
                        color: Theme.of(context).iconTheme.color,
                      )),
                ],
              ),
              title: Text(""),
              trailing: Icon(
                CupertinoIcons.bookmark,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: (post.likedBy != null)
                  ? Row(
                      children: [
                        Flexible(
                          child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .color),
                                  text: "Liked By ",
                                  children: [
                                    TextSpan(
                                        text:
                                            "${post.likedBy!.getRange(post.likedBy!.length - 3, post.likedBy!.length).join(", ")}",
                                        style: Theme.of(context).textTheme.caption,
                                        children: [
                                          TextSpan(
                                              text: " and",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2)
                                        ])
                                  ])),
                        ),
                        Text(
                          " 1485 others",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    )
                  : SizedBox.shrink(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: (post.caption != null)
                  ? RichText(
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          style: Theme.of(context).textTheme.caption,
                          text: "${post.name} ",
                          children: [
                            TextSpan(
                                text: post.caption,
                            style: Theme.of(context).textTheme.bodyText2,
                            )
                          ])) : SizedBox.shrink(),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
            child: Text(post.postDate,style: TextStyle(color: Theme.of(context).textTheme.subtitle2!.color,fontSize: 12),),
            )
          ],
        ),
      ),
    );
  }

  Container storyItems(Story story) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          /// Story Image
          Container(
            height: 70,
            width: 70,
            padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              border: Border.all(color: Colors.purple, width: 3),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(story.image),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          /// User name
          Text(
            story.name,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
