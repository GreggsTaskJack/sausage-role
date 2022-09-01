class CurrencyFormatter {
  static String getCurrencyString(double amount) {
    return '£${amount.toStringAsFixed(2)}';
  }
}