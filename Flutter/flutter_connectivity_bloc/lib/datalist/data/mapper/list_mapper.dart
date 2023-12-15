
import 'package:flutter_connectivity_bloc/datalist/data/models/listModel.dart';

import '../../domain/entities/list_entity.dart';


class ListMapper {
  List<ListEntity> getDataList(List<ListModel> listModel) {
    List<ListEntity> _newList = [];

    for (var element in listModel) {
      _newList.add(ListEntity(
          title: element.title,
          body: element.body,
          id: element.id,
          userId: element.userId
      ));
    }

    return _newList;
  }
}