import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/utils/logger.dart';

class CustomBlocObserver implements BlocObserver {
  @override
  void onEvent(
    Bloc<dynamic, dynamic> bloc,
    Object? event,
  ) {
    logger.print(
      '''
      bloc = $bloc
      event = $event
      ''',
      title: PrintTitles.blocObserver,
    );
  }

  @override
  void onError(
    BlocBase<dynamic> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    logger.print(
      '''
      bloc = $bloc
      error = $error
      trace = $stackTrace
      ''',
      title: PrintTitles.blocObserver,
    );
  }

  @override
  void onChange(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) {
    logger.print(
      '''
      bloc = $bloc
      change = $change
      ''',
      title: PrintTitles.blocObserver,
    );
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    logger.print(
      '''
      bloc = $bloc
      transition = $transition
      ''',
      title: PrintTitles.blocObserver,
    );
  }

  @override
  void onClose(
    BlocBase<dynamic> bloc,
  ) {
    logger.print(
      '''
      bloc = $bloc
      close = $bloc
      ''',
      title: PrintTitles.blocObserver,
    );
  }

  @override
  void onCreate(
    BlocBase<dynamic> bloc,
  ) {
    logger.print(
      '''
      create = $bloc
      ''',
      title: PrintTitles.blocObserver,
    );
  }
}
