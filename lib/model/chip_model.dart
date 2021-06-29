class ChipModel{
  String label;
  String image;

  ChipModel({this.label = " ", this.image = " "});

  @override
  String toString() {
    return 'ChipModel{label: $label, image: $image}';
  }
}