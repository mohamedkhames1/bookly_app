import 'package:booklyapp/core/error/failure.dart';
import 'package:booklyapp/core/utlis/api_service.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/homerepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{

  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{

    try {
      var data =await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting:newest&q=subject:computer sciences');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
        }
      return right(books);
    }  catch (e) {
      if(e is DioException){
        return left(ServerFailure.formDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async{
    try {
      var data =await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if(e is DioException){
        return left(ServerFailure.formDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}