import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/repos/homerepo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    return result.fold(
        (failure) => emit(FeatureBooksFailure(failure.errMessage)),
        (book) => emit(FeatureBooksSuccess(book)));
  }
}
