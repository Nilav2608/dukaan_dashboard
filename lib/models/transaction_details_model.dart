class TransactionDetailsModel {
  String? date;
  String? status;
  String? transactionID;
  String? orderAmount;
  String? transactionFees;
  String? total;

  TransactionDetailsModel(
      {this.date,
      this.status,
      this.transactionID,
      this.orderAmount,
      this.transactionFees,
      this.total});

  TransactionDetailsModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    status = json['status'];
    transactionID = json['transactionID'];
    orderAmount = json['orderAmount'];
    transactionFees = json['transactionFees'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['date'] = date;
    data['status'] = status;
    data['transactionID'] = transactionID;
    data['orderAmount'] = orderAmount;
    data['transactionFees'] = transactionFees;
    data['total'] = total;
    return data;
  }
}
