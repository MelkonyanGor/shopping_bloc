import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'shopping_event.dart';
part 'shopping_state.dart';

class ShoppingBloc extends Bloc<ShoppingEvent, ShoppingState> {
  ShoppingBloc() : super(ShoppingInitial(count: 0, icon: Icons.add_box_outlined)) {
    on<ShoppingEvent>((event, emit) {
     
    });
  }
}

