import 'package:flutter_application_5/card_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Wraper extends StatelessWidget {
  const Wraper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<>(
            create: (context) => ),
        BlocProvider<>(create: (context) => ShoppingBloc()),
      ],
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<>(
      builder: (context, state) {
        return Scaffold(
          // AppBar
          appBar: AppBar(
            title: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.shopping_cart),
                ),
                Text(state.toString()),
              ],
            ),
          ),
          // Body
          body: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: const [
                CardComponent(
                icon: Icons.watch,
                text: 'iWatch',
                price: 15,
                icon1: Icons.add_box_outlined,
              ),
              CardComponent(
                icon: Icons.tv,
                text: 'Apple TV',
                price: 100,
                icon1: Icons.add_box_outlined,
              ),
             CardComponent(icon: Icons.phone_android, text: 'iphone', price: 100, icon1: Icons.add_box_outlined)
              ],
              );
            },
          ),
        );
      },
    );
  }
}