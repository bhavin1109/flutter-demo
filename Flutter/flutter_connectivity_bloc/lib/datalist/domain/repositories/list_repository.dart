
// import 'package:dio/dio.dart';
// import 'package:flutter_connectivity_bloc/data/models/listModel.dart';
// import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';
//
// import '../../../data/repositories/api/api.dart';

import 'package:flutter_connectivity_bloc/core/resources/data_state.dart';
import '../entities/list_entity.dart';

abstract class ListRepository {
  Future<List<ListEntity>> getDataList();
}

