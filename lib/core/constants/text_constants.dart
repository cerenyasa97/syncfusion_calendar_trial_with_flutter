import 'package:ulogi_calendar_ui/model/chip_model.dart';

class TextConstants{

  static const IMAGE_PATH = "assets/images/";

  static List<ChipModel> chipList = [
  ChipModel(label: "Araç Muayene Günü", image: IMAGE_PATH + "info.png"),
  ChipModel(label: "28 Adet Sevkiyat", image: IMAGE_PATH + "gps.png"),
  ChipModel(label: "2 Adet Ceza", image: IMAGE_PATH + "ticket.png"),
  ChipModel(label: "Araç Bakım Günü", image: IMAGE_PATH + "car_service.png")
  ];
}