import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewsetBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeatureBooks();
}