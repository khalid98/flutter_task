import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_layout_state.dart';

class AppLayoutCubit extends Cubit<AppLayoutState> {
  AppLayoutCubit() : super(AppLayoutInitial());

  int selectpage = 0;

  int get page => selectpage;
  void rest() {
    selectpage = 0;
  }


  void changeselectedpage(int index) {
    selectpage = index;
    emit(AppLayoutOnchange());
  }
}
