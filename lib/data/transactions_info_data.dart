import '../models/transactions_info_model.dart';

class TransactionsInfoData {
  final List<TransactionsInfoModel> tdata = [
    TransactionsInfoModel(transactionName: "Not eligible", counts: '23'),
    TransactionsInfoModel(transactionName: "Eligible", counts: '33'),
    TransactionsInfoModel(transactionName: "Next Payout", counts: '2'),
    TransactionsInfoModel(transactionName: "Completed Payouts", counts: '14'),
    TransactionsInfoModel(transactionName: "Refunds", counts: '2'),
  ];
}
