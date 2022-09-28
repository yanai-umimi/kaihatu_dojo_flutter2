part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends BottomNavigationEvent {
  @override
  String toString() => 'AppStarted()';
}

class BottomNavigationBarTapped extends BottomNavigationEvent {
  final NavBarItem navBarItem;
  final int index;

  const BottomNavigationBarTapped(
      {required this.navBarItem, required this.index});

  @override
  List<Object> get props => [navBarItem, index];

  @override
  String toString() =>
      'BottomNavigationBarTapped(navBarItem: $navBarItem, index: $index)';
}
