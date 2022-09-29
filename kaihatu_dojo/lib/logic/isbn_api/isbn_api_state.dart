part of 'isbn_api_bloc.dart';

abstract class IsbnApiState extends Equatable {
  const IsbnApiState();
  
  @override
  List<Object> get props => [];
}

class IsbnApiInitial extends IsbnApiState {}
