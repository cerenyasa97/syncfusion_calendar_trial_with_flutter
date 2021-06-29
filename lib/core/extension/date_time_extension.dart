extension DateTimeExtension on DateTime{
  DateTime get date => DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
}