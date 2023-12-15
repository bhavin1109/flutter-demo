import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';

abstract class ListState {}

class ListLoadingState extends ListState {}

class ListResultState extends ListState {
  final List<ListEntity> list;
  ListResultState(this.list);
}

class ListErrorState extends ListState {
  final String errorMsg;
  ListErrorState(this.errorMsg);
}