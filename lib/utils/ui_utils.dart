import 'package:flutter/material.dart';
import 'package:youtube_design/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.width;

  if (deviceWidth > 1200) {
    return DeviceScreenType.Desktop;
  } else if (deviceWidth >= 800 && deviceWidth <= 1200) {
    return DeviceScreenType.Tablet;
  } else {
    return DeviceScreenType.Mobile;
  }
}
