
import 'package:dio/dio.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';

import '../../../../core/api/api.dart';
import '../../mapper/list_mapper.dart';
import '../../models/listModel.dart';

abstract class ListAPIService {
  Future<List<ListEntity>> fetchList();
}
































// class ListRepository {
//
//   API api = API();
//
//   Future<List<ListModel>> fetchList() async {
//
//     try {
//       Response response = await api.sendRequest.get("/posts");
//       List<dynamic> list = response.data;
//       return list.map((e) => ListModel.fromJson(e)).toList();
//     }
//     catch(ex) {
//       throw ex;
//     }
//   }
// }