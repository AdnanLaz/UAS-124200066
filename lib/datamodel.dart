class convert {
  double? newAmount;
  String? newCurrency;
  String? oldCurrency;
  int? oldAmount;

  convert({this.newAmount, this.newCurrency, this.oldCurrency, this.oldAmount});

  convert.fromJson(Map<String, dynamic> json) {
    newAmount = json['new_amount'];
    newCurrency = json['new_currency'];
    oldCurrency = json['old_currency'];
    oldAmount = json['old_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['new_amount'] = this.newAmount;
    data['new_currency'] = this.newCurrency;
    data['old_currency'] = this.oldCurrency;
    data['old_amount'] = this.oldAmount;
    return data;
  }
}