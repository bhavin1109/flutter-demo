
import 'package:flutter_connectivity_bloc/datalist/data/repository/list_repository_impl.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/repositories/list_repository.dart';

class ListUseCase {
  final ListRepository repository = ListRepositoryImpl();

  //ListUseCase({required this.repository});

  Future<List<ListEntity>> getDataList() async {
    return await repository.getDataList();
  }

}