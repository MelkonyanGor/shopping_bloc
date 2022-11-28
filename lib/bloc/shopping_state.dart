part of 'shopping_bloc.dart';

@immutable
abstract class ShoppingState {}

class ShoppingInitial extends ShoppingState {
  final int count;
  final IconData icon;

  ShoppingInitial({required this.count,required this.icon});
  
}

