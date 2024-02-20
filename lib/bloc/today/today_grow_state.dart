import 'package:flutter_pet_journal/models/today_grow_model.dart';

abstract class TodayGrowState {
  const TodayGrowState();
}

class TodayGrowInitialState extends TodayGrowState {}

class TodayGrowLoadingState extends TodayGrowState {}

class TodayGrowFetchSuccessState extends TodayGrowState {
  final List<TodayGrowModel> list;

  const TodayGrowFetchSuccessState(this.list);
}

class TodayGrowFetchFailureState extends TodayGrowState {
  final String code;

  const TodayGrowFetchFailureState(this.code);
}
