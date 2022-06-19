import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starwars_fan_app/bloc/resources_bloc.dart';
import 'package:starwars_fan_app/router/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final resourcesBloc = ResourcesBloc();
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    resourcesBloc.getResources();
    resourcesBloc.resources.listen((resources) {
      Navigator.pushNamed(context, Routes.homePage, arguments: resources);
    });
  }

  @override
  void dispose() {
    super.dispose();
    resourcesBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            'assets/star_wars_logo.svg',
          ),
        ],
      ),
    );
  }
}
