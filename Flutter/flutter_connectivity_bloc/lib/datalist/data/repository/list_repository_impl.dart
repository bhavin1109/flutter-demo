import 'package:flutter_connectivity_bloc/core/resources/data_state.dart';
import 'package:flutter_connectivity_bloc/datalist/data/datasources/remote/list_api_service.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/repositories/list_repository.dart';

import '../datasources/remote/list_api_service_impl.dart';

class ListRepositoryImpl extends ListRepository  {
  ListAPIService listAPIService = ListAPIServiceImpl();

  @override
  Future<List<ListEntity>> getDataList() async {
    return await listAPIService.fetchList();
  }
}