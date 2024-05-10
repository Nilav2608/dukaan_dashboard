import '../models/transaction_details_model.dart';
import '../models/transactions_info_model.dart';

class TransactionsInfoData {
  final List<TransactionsInfoModel> tdata = [
    TransactionsInfoModel(transactionName: "Not eligible", counts: '23'),
    TransactionsInfoModel(transactionName: "Eligible", counts: '33'),
    TransactionsInfoModel(transactionName: "Next Payout", counts: '2'),
    TransactionsInfoModel(transactionName: "Completed Payouts", counts: '14'),
    TransactionsInfoModel(transactionName: "Refunds", counts: '2'),
  ];

  final List<TransactionDetailsModel> transactions = [
    TransactionDetailsModel(
        date: 'Today, 09:00 PM',
        status: "Processing",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: 'Today, 03:00 PM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: 'Today, 09:00 AM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: 'Yesterday, 3:00 PM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: 'Yesterday, 09:00 AM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: '12 Jul 2023, 03:00 PM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: 'Today, 09:00 PM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
    TransactionDetailsModel(
        date: '12 Jul 2023, 11:00 AM',
        status: "Successful",
        transactionID: '131634495747',
        orderAmount: '10,125.00',
        transactionFees: '1,125.00',
        total: '9,312'),
  ];
}
