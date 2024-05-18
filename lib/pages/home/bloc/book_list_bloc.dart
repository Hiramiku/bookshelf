import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_list_event.dart';
part 'book_list_state.dart';

class BookListBloc extends Bloc<BookListEvent, BookListState> {
  BookListBloc() : super(BookListInitial()){
    on<BookListEvent>((event,emit){

  });
  }
}