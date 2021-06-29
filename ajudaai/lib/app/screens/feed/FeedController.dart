
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'FeedController.g.dart';

class FeedController = _FeedController with _$FeedController;

abstract class _FeedController with Store {

    @action
    goBackHome(context) {
        Navigator.pop(context, true);
    }
}
