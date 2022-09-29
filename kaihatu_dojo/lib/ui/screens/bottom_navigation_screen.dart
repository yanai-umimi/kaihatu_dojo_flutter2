import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaihatu_dojo/ui/screens/home_screen.dart';

import '../../constants/enums.dart';
import '../../constants/pallete.dart';
import '../../logic/bottom_navigation/bottom_navigation_bloc.dart';
import '../widgets/loading_view.dart';
import 'my_page_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: _buildBlocListeners(context),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return Scaffold(
            body: _buildBody(
              context,
              index: state.index,
              data: state.data,
            ),
            bottomNavigationBar: _buildNavBar(
              context,
              onTap: _addBottomNavigationBarTappedEvent,
              currentIndex: state.index,
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody(
    BuildContext context, {
    required int index,
    required dynamic data,
  }) {
    if (data == null) {
      return const LoadingView();
    }
    if (NavBarItem.values[index] == NavBarItem.home) {
      return HomeScreen(text: 'op');
    } else if (NavBarItem.values[index] == NavBarItem.mypage) {
      return MyPageScreen(
        number: 0,
      );
    }
    return const LoadingView();
  }

  Widget _buildNavBar(
    BuildContext context, {
    required Function onTap,
    required int currentIndex,
  }) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Palette.shadowColor,
          blurRadius: 4,
          spreadRadius: 4,
        )
      ]),
      child: BottomNavigationBar(
        onTap: (index) => onTap(context, index),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Palette.backgroundColor,
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Palette.secondaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'マイページ',
          ),
        ],
      ),
    );
  }

  void _addBottomNavigationBarTappedEvent(
    BuildContext context,
    int index,
  ) {
    context.read<BottomNavigationBloc>().add(
          BottomNavigationBarTapped(
            navBarItem: NavBarItem.values[index],
            index: index,
          ),
        );

    // if (NavBarItem.values[index] == NavBarItem.mypage) {
    //   context.read<MyPageTabViewBloc>().add(
    //         ViewUpdated(index: context.read<MyPageTabCubit>().state.index),
    //       );
    // } else {
    //   context.read<MyPageTabViewBloc>().add(MyPageDeactivated());
    // }
  }

  List<BlocListener> _buildBlocListeners(BuildContext context) {
    return [
      BlocListener<BottomNavigationBloc, BottomNavigationState>(
        listener: (context, state) {
          // print(state);
        },
      ),
      // BlocListener<SuggestionsViewBloc, SuggestionsViewState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<RecentKeywordsCubit, RecentKeywordsState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<SearchBarFocusedViewBloc, SearchBarFocusedViewState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<SearchWithQueryViewBloc, SearchWithQueryViewState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<SearchResultsViewBloc, SearchResultsViewState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<SearchBarBloc, SearchBarState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<MyPageTabCubit, MyPageTabState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<MyPageTabViewBloc, MyPageTabViewState>(
      //   listener: (context, state) {
      //     // print(state);
      //   },
      // ),
      // BlocListener<SignUpCubit, SignUpState>(
      //   listener: (context, state) {
      //     print(state);
      //   },
      // ),
    ];
  }
}
