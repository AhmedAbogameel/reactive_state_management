import 'dart:async';

Controller controller = Controller();


class Controller {

  Controller() {
    streamController = StreamController();
     streamController.stream.asBroadcastStream();
  }

  bool value = false;
  late StreamController<bool> streamController;

  void toggleSwitch(bool value) {
    this.value = value;
    streamController.sink.add(value);
  }

  onClose() {
    streamController.close();
  }

}