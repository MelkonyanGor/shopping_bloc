import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardComponent extends StatelessWidget {
  final String text;
  final IconData icon;
  final int price;
  final IconData icon1;

  const CardComponent(
      {super.key,
      required this.icon,
      required this.text,
      required this.price,
      required this.icon1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: SizedBox(
          height: 150.0,
          child: Row(
            children: [
              // Image
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: Icon(
                      icon,
                      size: 90.0,
                    ),
                  ),
                ],
              ),
              // grey Column
              Column(
                children: [
                  Container(
                    color: Colors.grey.shade300,
                    height: 150.0,
                    width: 1.0,
                  ),
                ],
              ),
              // product name, price and button

              //product name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //price
                    Row(
                      children: [
                        Text(
                          price.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        const Text(
                          'AMD',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        //button
                        IconButton(
                          onPressed: () {
                            final counterBloc =
                                context.read<>();
                            counterBloc.add();
                            final changeIcon = context.read<>();
                            changeIcon.add();
                          },
                          icon: Icon(icon1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}