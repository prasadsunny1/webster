import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('TRANSITION: $transition');
  }
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print('ERROR: $error');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    print('EVENT: $event');
    super.onEvent(bloc, event);
  }
}