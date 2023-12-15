import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/entities/list_entity.dart';
import 'package:flutter_connectivity_bloc/datalist/presentation/cubit/list_state.dart';
import 'package:flutter_connectivity_bloc/datalist/domain/repositories/list_repository.dart';

import '../cubit/list_cubit.dart';

class TempListPage extends StatelessWidget {
  const TempListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
      ),
      body: SafeArea(
        child: BlocBuilder<ListCubit, ListState>(
          builder: (context, state) {
            if (state is ListLoadingState) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            }

            if (state is ListResultState) {
              return ListView.builder(
                itemCount: state.list.length,
                  itemBuilder: (context, index) {
                    ListEntity model =  state.list[index];
                    return ListTile(
                      title: Text(model.title.toString()),
                      subtitle:Text(model.body.toString()) ,
                    );
                  },
              );
            }

            return const Center(
              child: Text("No data found"),
            );
          },
        ),
      ),
    );
  }


}
