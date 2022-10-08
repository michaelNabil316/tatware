abstract class HomeStates {}

class HomeInitial extends HomeStates {}

class HomeLoadingData extends HomeStates {}

class HomeSuccessData extends HomeStates {}

class HomeChangedScreenState extends HomeStates {}

class HomeError extends HomeStates {
  String error;
  HomeError({required this.error});
}
