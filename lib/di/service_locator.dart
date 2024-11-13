import 'package:get_it/get_it.dart';

import '../view_model/text_in_image_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<TextInImageViewModel>(() => TextInImageViewModel());
}
