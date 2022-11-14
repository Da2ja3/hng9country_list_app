import 'package:bloc/bloc.dart';
import 'package:country_list_app/app/Country%20Block/Sort%20Groups/sort_group_state.dart';


class SortGroupCubit extends Cubit<SortGroupState> {
  SortGroupCubit()
      : super(const SortGroupState(
    sortValue: 'Name',
    groupValue: 'Ungrouped',
  ));

  void onChangeSortOption(String newValue) {
    emit(state.copyWith(sortValue: newValue));
  }

  void onChangeGroupOption(String newValue) {
    emit(state.copyWith(groupValue: newValue));
  }
}