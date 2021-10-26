import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Instagram Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // empty method to use it in the buttons
  void _justClick() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Instagram'),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                  splashRadius: 0.1,
                  icon: const Icon(Icons.chat_bubble_outline_outlined),
                  onPressed: _justClick,
                )
              ],
            ),
          )),
      body: Container(
        color: Colors.white,
        child: Expanded(
          child: ListView(children: [
            // Stories row
            Container(
              decoration: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 0.2, color: Colors.grey)),
              width: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_rounded),
                          )),
                      Text('Ваша история',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_outlined),
                          )),
                      Text('user_name',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_outlined),
                          )),
                      Text('user_name',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_outlined),
                          )),
                      Text('user_name',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    margin: EdgeInsets.zero,
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_outlined),
                          )),
                      Text('user_name',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  ),
                  Container(
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_outlined),
                          )),
                      Text('user_name',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  ),
                  Container(
                    width: 80,
                    height: 90,
                    child: Column(children: const [
                      Expanded(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(Icons.account_circle_outlined),
                          )),
                      Text('user_name',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 12))
                    ]),
                  )
                ]),
              ),
            ),

            // Posts
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'user_name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ukraine',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 0.2, color: Colors.grey),
                      ),
                    ),
                    constraints: const BoxConstraints(maxHeight: 450),
                    child: const Image(
                      image: AssetImage('images/download1.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mode_comment_outlined,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_rounded,
                          size: 30,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.bookmark_border_outlined,
                        size: 30,
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Нравится: 1000',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'user_name ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        'some very large text that can be displayed in a maximum of two lines. Otherwise it will be trimmed with three dots at the end.'),
                                  ])),
                        ),
                        const Text('Посмотреть все комментарии (132)',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('30 минут назад',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  )
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'user_name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ukraine',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 0.2, color: Colors.grey),
                      ),
                    ),
                    constraints: const BoxConstraints(maxHeight: 450),
                    child: const Image(
                      image: AssetImage('images/download3.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mode_comment_outlined,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_rounded,
                          size: 30,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.bookmark_border_outlined,
                        size: 30,
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Нравится: 1000',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'user_name ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        'some very large text that can be displayed in a maximum of two lines. Otherwise it will be trimmed with three dots at the end.'),
                                  ])),
                        ),
                        const Text('Посмотреть все комментарии (132)',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('30 минут назад',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  )
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'user_name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ukraine',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 0.2, color: Colors.grey),
                      ),
                    ),
                    constraints: const BoxConstraints(maxHeight: 450),
                    child: const Image(
                      image: AssetImage('images/download2.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mode_comment_outlined,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_rounded,
                          size: 30,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.bookmark_border_outlined,
                        size: 30,
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Нравится: 1000',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'user_name ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        'some very large text that can be displayed in a maximum of two lines. Otherwise it will be trimmed with three dots at the end.'),
                                  ])),
                        ),
                        const Text('Посмотреть все комментарии (132)',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('30 минут назад',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  )
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'user_name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ukraine',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 0.2, color: Colors.grey),
                      ),
                    ),
                    constraints: const BoxConstraints(maxHeight: 450),
                    child: const Image(
                      image: AssetImage('images/download.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mode_comment_outlined,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_rounded,
                          size: 30,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.bookmark_border_outlined,
                        size: 30,
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Нравится: 1000',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'user_name ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        'some very large text that can be displayed in a maximum of two lines. Otherwise it will be trimmed with three dots at the end.'),
                                  ])),
                        ),
                        const Text('Посмотреть все комментарии (132)',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('30 минут назад',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  )
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'user_name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ukraine',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 0.1,
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                        ),
                        onPressed: _justClick,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 0.2, color: Colors.grey),
                      ),
                    ),
                    constraints: const BoxConstraints(maxHeight: 450),
                    child: const Image(
                      image: AssetImage('images/download1.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mode_comment_outlined,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_rounded,
                          size: 30,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.bookmark_border_outlined,
                        size: 30,
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Нравится: 1000',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'user_name ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        'some very large text that can be displayed in a maximum of two lines. Otherwise it will be trimmed with three dots at the end.'),
                                  ])),
                        ),
                        const Text('Посмотреть все комментарии (132)',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('30 минут назад',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                  )
                ])
          ]),
        ),
      ),

      // Bottom row with command buttons
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 0.2, color: Colors.grey))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                iconSize: 30,
                padding: EdgeInsets.zero,
                splashRadius: 0.1,
                icon: const Icon(Icons.home_filled),
                onPressed: _justClick,
              ),
              IconButton(
                iconSize: 30,
                padding: EdgeInsets.zero,
                splashRadius: 0.1,
                icon: const Icon(Icons.search),
                onPressed: _justClick,
              ),
              IconButton(
                iconSize: 30,
                padding: EdgeInsets.zero,
                splashRadius: 0.1,
                icon: const Icon(Icons.add_box_outlined),
                onPressed: _justClick,
              ),
              IconButton(
                iconSize: 30,
                padding: EdgeInsets.zero,
                splashRadius: 0.1,
                icon: const Icon(Icons.favorite_border),
                onPressed: _justClick,
              ),
              IconButton(
                iconSize: 30,
                padding: EdgeInsets.zero,
                splashRadius: 0.1,
                icon: const Icon(Icons.account_circle_rounded),
                onPressed: _justClick,
              )
            ],
          ),
        ),
      ),
    );
  }
}
