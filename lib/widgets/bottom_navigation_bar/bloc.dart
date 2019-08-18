import 'package:bloc/bloc.dart';

class BtmNavBarBloc extends Bloc<dynamic, dynamic> {
  final startIndex;
  final String title;

  BtmNavBarBloc({this.startIndex = 0, this.title = ''});

  @override
  Stream mapEventToState(event) async* {
    if (event is PageChangeEvent)
      yield PageChangeState(event.nextPage, title: event.title);
  }

  @override
  get initialState => PageChangeState(startIndex, title: title);
}

class PageChangeState {
  final int nextPage;

  final String title;

  PageChangeState(this.nextPage, {this.title = ''});
}

class PageChangeEvent {
  int nextPage = 0;
  String title = '';

  PageChangeEvent(this.nextPage, {this.title});
}
