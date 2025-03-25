//valueNotifier : hold the data
//valueListenablebuilder: listern to the data (dont needed the setstate)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedIndex = ValueNotifier(0);
ValueNotifier<bool> isDark = ValueNotifier(false);