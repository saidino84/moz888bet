import 'dart:async';

import 'package:flutter/material.dart';

class VatController {
  static var priceWithVatInput = TextEditingController();
  static var priceWithotVatInput = TextEditingController();
  static final controlstrem = StreamController<double>.broadcast();
  static Sink<double> get price_vatset_sink => controlstrem;
  static Sink<double> get price_vatinset_sink => controlstrem.sink;

  static var vat = 16;

  static double getPriceWithVat(double price) {
    double res = price - ((price + 17) / 100);
    print('First sink');
    price_vatset_sink.add(2.5);
    price_vatinset_sink.add(res);

    priceWithotVatInput.text = res.toString();

    return res;
  }

  static double getPriceWithoutVat(double price) {
    double res = (price / (1 - vat / 100)) * price;
    print('Second sink');
    priceWithotVatInput.text = res.toString();
    return res;
  }
}
