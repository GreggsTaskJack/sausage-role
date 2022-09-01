extension StringExtension on String {
  String ofMaxLength(int maxLength, {bool withoutLineBreaks = false}) {
    var string = this;
    if (withoutLineBreaks) {
      string = string.split("\n").first;
    }
    if (string.length < maxLength) {
      return string;
    } else {
      return '${string.substring(0, maxLength - 3)}...';
    }
  }
}