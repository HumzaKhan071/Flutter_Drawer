import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

class Elastic extends StatefulWidget {
  const Elastic({Key? key}) : super(key: key);

  @override
  _ElasticState createState() => _ElasticState();
}

class _ElasticState extends State<Elastic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElasticDrawer(
        mainColor: Colors.white,
        drawerColor: const Color(0xff3C3F41),
        mainChild: const Center(
          child: Text(
            'MAIN page',
            style: TextStyle(color: Colors.black54, fontSize: 30),
          ),
        ),
        drawerChild: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                ElasticDrawerKey.drawer.currentState
                    ?.closeElasticDrawer(context);
                ElasticDrawerKey.navigator.currentState?.push(MaterialPageRoute(
                    builder: (context) => const YellowPage()));
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'YELLOW page',
                  style: TextStyle(
                      color: Color(0xfff4c20d),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ElasticDrawerKey.drawer.currentState
                    ?.closeElasticDrawer(context);
                ElasticDrawerKey.navigator.currentState?.push(
                    MaterialPageRoute(builder: (context) => const GreenPage()));
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'GREEN page',
                  style: TextStyle(
                      color: Color(0xff3cba54),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ElasticDrawerKey.drawer.currentState
                    ?.closeElasticDrawer(context);
                ElasticDrawerKey.navigator.currentState?.push(
                    MaterialPageRoute(builder: (context) => const RedPage()));
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'RED page',
                  style: TextStyle(
                      color: Color(0xffdb3236),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xff3cba54));
  }
}

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xfff4c20d));
  }
}

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xffdb3236));
  }
}
