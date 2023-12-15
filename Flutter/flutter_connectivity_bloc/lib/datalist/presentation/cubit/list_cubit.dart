
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/usecases/list_use_case.dart';
import 'package:flutter_connectivity_bloc/datalist/presentation/cubit/list_state.dart';

class ListCubit extends Cubit<ListState> {

  ListCubit() : super(ListLoadingState()) {
    fetchList();
  }

  ListUseCase useCase = ListUseCase();

  void fetchList() async {
    try {
      List<ListEntity> list = await useCase.getDataList();
      print("list===${list.length}");
      emit(ListResultState(list));

    } catch(ex) {
      emit(ListErrorState(ex.toString()));
    }
  }
}