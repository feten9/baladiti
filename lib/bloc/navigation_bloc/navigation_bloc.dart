import 'package:baladiti/pages/Reclamation.dart';
import 'package:bloc/bloc.dart';
import 'package:baladiti/pages/myaccountspage.dart';
import 'package:baladiti/pages/homepage.dart';
import 'package:baladiti/pages/ParametrePage.dart';
import 'package:baladiti/pages/PointMerciPage.dart';
enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyReclamClickedEvent,
  ParametreClickedEvent,
  BonusClickedEvent,

}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => myaccountspage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield myaccountspage();
        break;
      case NavigationEvents.MyReclamClickedEvent:
        yield Reclamation();
        break;
      case NavigationEvents.ParametreClickedEvent:
        yield ParametrePage();
        break;
      case NavigationEvents.BonusClickedEvent:
        yield PointMerciPage();
        break;
    }
  }
}