import 'package:fishbone/fishbone.dart' as fishbone;

class MainController extends fishbone.Controller {
  void home() {
    render('home', locals: {'v': 'v'});
  }
}

var mainController = new MainController();
