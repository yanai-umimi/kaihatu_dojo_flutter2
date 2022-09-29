import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'isbn_api_event.dart';
part 'isbn_api_state.dart';

class IsbnApiBloc extends Bloc<IsbnApiEvent, IsbnApiState> {
  IsbnApiBloc() : super(IsbnApiInitial()) {
    on<IsbnApiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
