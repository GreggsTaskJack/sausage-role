extension StringExtension on String {
  String ofMaxLength(int maxLenth, {bool withoutLineBreaks = false}) {
    var string = this;
    if (withoutLineBreaks) {
      string = string.split("\n").first;
    }
    if (string.length < maxLenth) {
      return string;
    } else {
      return '${string.substring(0, maxLenth - 3)}...';
    }
  }
}