

import 'package:dio/dio.dart';

import '../../../../core/api/api.dart';
import '../../../domain/entities/list_entity.dart';
import '../../mapper/list_mapper.dart';
import '../../models/listModel.dart';
import 'list_api_service.dart';

class ListAPIServiceImpl extends ListAPIService {
  API api = API();

  // Future<List<ListModel>> getList() async {
  //   try {
  //     Response response = await api.sendRequest.get("/posts");
  //     List<dynamic> list = response.data;
  //     return list.map((e) => ListModel.fromJson(e)).toList();
  //   }
  //   catch(ex) {
  //     throw ex;
  //   }
  // }
  @override
  Future<List<ListEntity>> fetchList() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> list = response.data;
      var listModel = list.map((e) => ListModel.fromJson(e)).toList();
      //print("listModel==${listModel.length}");
      return ListMapper().getDataList(listModel);
    }
    catch(ex) {
      throw ex;
    }
  }

}