import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/presentation/view_models/feature_book_cubit/feature_books_cubit.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/homerepo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();

    return result.fold(
        (failure) => emit(NewsetBooksFailure(failure.errMessage)),
        (book) => emit(NewsetBooksSuccess(book)));
  }
}
