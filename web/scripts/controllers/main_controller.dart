import 'package:fishbone/fishbone.dart' as fishbone;

class MainController extends fishbone.Controller {
  void home() {
    super.render('home');
  }
}

var mainController = new MainController();
