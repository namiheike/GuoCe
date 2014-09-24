import 'dart:html' as html;

import 'package:fishbone/fishbone.dart' as fishbone;

import 'controllers/manifest.dart';

class MainApplication extends fishbone.Application{
  html.Element container;

  var controllers = {
    'main' : mainController
  };

  var routes = {
    '' : 'main#home'
  };

  MainApplication(this.container) {
    super.init();
  }
}

void main() {
  var element = new html.DivElement();
  html.document.body.children.add(element);

  var guoce = new MainApplication(element);
}
