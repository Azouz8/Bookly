import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getItHomeRepoService = GetIt.instance;
final getItSearchRepoService = GetIt.instance;

void setupServiceLocatorHomeRepo() {
  getItHomeRepoService.registerSingleton<ApiService>(ApiService(Dio()));
  getItHomeRepoService.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getItHomeRepoService<ApiService>()));
}
void setupServiceLocatorSearchRepo(){
  getItSearchRepoService.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getItSearchRepoService<ApiService>()));
}