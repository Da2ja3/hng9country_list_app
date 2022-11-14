import 'package:bloc/bloc.dart';

import '../Models/country_list.dart';
import '../Models/country_list_model.dart';
import 'country_event.dart';
import 'country_state.dart';


// part 'country_event.dart';
// part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc({required this.countryRepository})
      : super(CountryInitialState()) {
    on<LoadCountryEvent>((event, emit) async {
      emit(CountryLoadingState());
      try {
        List<CountryModel> countryList = await countryRepository.getCountries();
        emit(
          CountryLoadedState(
            countryList: countryList,
            sortingStatus: 'Name',
            groupingStatus: 'Ungrouped',
          ),
        );
      } catch (error) {
        emit(CountryErrorState(error: error.toString()));
      }
    });
    on<ChangeGroupAndSortEvent>(
          (event, emit) {
        emit((state as CountryLoadedState).copyWith(
            groupingStatus: event.groupValue, sortingStatus: event.sortValue));
      },
    );
  }

  final CountryRepository countryRepository;
}