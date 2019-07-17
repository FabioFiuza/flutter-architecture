import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class BlocBase extends ChangeNotifier {
  final _loading = BehaviorSubject<bool>.seeded(false);
  
  Observable<bool> get loading => _loading.stream.asBroadcastStream();
  void setLoading(bool status) => _loading.sink.add(status);

  final _toolbarElevaton = BehaviorSubject<int>.seeded(0);

  Observable<int> get toolbarElevation => _toolbarElevaton.stream.asBroadcastStream();
  void setToolbarElevation(int value) => _toolbarElevaton.sink.add(value);

  @override
  void dispose() {
    _loading.close();
    _toolbarElevaton.close();
    
    super.dispose();
  }
}
