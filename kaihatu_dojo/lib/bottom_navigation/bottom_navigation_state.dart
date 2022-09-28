// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationState extends Equatable {
  final NavBarItem navBarItem;
  final int index;
  final dynamic data;
  const BottomNavigationState(
      {required this.navBarItem, required this.index, required this.data});

  @override
  List<Object?> get props => [navBarItem, index, data];
}

class ScreenLoading extends BottomNavigationState {
  const ScreenLoading({required navBarItem, required index})
      : super(index: index, navBarItem: navBarItem, data: null);

  @override
  String toString() => 'ScreenLoading(navBarItem: $navBarItem, index: $index)';
}

class HomeScreenLoaded extends BottomNavigationState {
  const HomeScreenLoaded({required navBarItem, required index, required data})
      : super(index: index, navBarItem: navBarItem, data: data);

  @override
  List<Object?> get props => [navBarItem, index, data];

  @override
  String toString() =>
      'HomeScreenLoaded(navBarItem: $navBarItem, index: $index, data: ${data.toString()})';
}

class SearchScreenLoaded extends BottomNavigationState {
  const SearchScreenLoaded({required navBarItem, required index, required data})
      : super(index: index, navBarItem: navBarItem, data: data);

  @override
  String toString() =>
      'SearchScreenLoaded(navBarItem: $navBarItem, index: $index, data: ${data.toString()})';
}

class SellItemsScreenLoaded extends BottomNavigationState {
  const SellItemsScreenLoaded(
      {required navBarItem, required index, required data})
      : super(index: index, navBarItem: navBarItem, data: data);

  @override
  String toString() =>
      'SellItemsScreenLoaded(navBarItem: $navBarItem, index: $index, data: ${data.toString()})';
}

class MessageScreenLoaded extends BottomNavigationState {
  const MessageScreenLoaded(
      {required navBarItem, required index, required data})
      : super(index: index, navBarItem: navBarItem, data: data);

  @override
  String toString() =>
      'MessageScreenLoaded(navBarItem: $navBarItem, index: $index, data: ${data.toString()})';
}

class MyPageScreenLoaded extends BottomNavigationState {
  const MyPageScreenLoaded({required navBarItem, required index, required data})
      : super(index: index, navBarItem: navBarItem, data: data);

  @override
  String toString() =>
      'MyPageScreenLoaded(navBarItem: $navBarItem, index: $index, data: ${data.toString()})';
}
