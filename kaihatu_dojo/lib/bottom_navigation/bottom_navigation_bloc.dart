import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../constants/enums.dart';
// import 'package:preloved/data/models/home/recently_viewed_item.dart';
// import 'package:preloved/data/repositories/home/home_screen_repository.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc()
      : super(
          const ScreenLoading(
            navBarItem: NavBarItem.home,
            index: 0,
          ),
        ) {
    on<AppStarted>(_onAppStarted);
    on<BottomNavigationBarTapped>(_onBottomNavigationBarTapped);
  }

  void _onAppStarted(AppStarted event, Emitter<BottomNavigationState> emit) {
    add(
      const BottomNavigationBarTapped(
        navBarItem: NavBarItem.home,
        index: 0,
      ),
    );
  }

  void _onBottomNavigationBarTapped(BottomNavigationBarTapped event,
      Emitter<BottomNavigationState> emit) async {
    switch (event.index) {
      case 0:
        await emitHomeScreenState(event, emit);
        break;
      case 1:
        emit(
          SearchScreenLoaded(
            navBarItem: event.navBarItem,
            index: event.index,
            data: 0,
          ),
        );
        break;
      case 2:
        emit(
          SellItemsScreenLoaded(
            navBarItem: event.navBarItem,
            index: event.index,
            data: 0,
          ),
        );
        break;
      case 3:
        emit(
          MessageScreenLoaded(
            navBarItem: event.navBarItem,
            index: event.index,
            data: 0,
          ),
        );
        break;
      case 4:
        emit(
          MyPageScreenLoaded(
            navBarItem: event.navBarItem,
            index: event.index,
            data: 0,
          ),
        );
        break;
    }
  }

  Future<void> emitHomeScreenState(
    BottomNavigationBarTapped event,
    Emitter<BottomNavigationState> emit,
  ) async {
    if (state is! HomeScreenLoaded) {
      //HomeScreenRepository repo = HomeScreenRepository();
      emit(
        ScreenLoading(
          navBarItem: event.navBarItem,
          index: event.index,
        ),
      );
      //List<RecentlyViewedItem> data = await repo.getRecentlyViewedItem();
      if (state is ScreenLoading) {
        emit(
          HomeScreenLoaded(
            navBarItem: event.navBarItem,
            index: event.index,
            data: ['s'],
          ),
        );
      }
    }
  }
}
