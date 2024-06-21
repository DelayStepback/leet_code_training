import 'dart:async';

Future<void> main() async {
  Timer? _statusFlowForRateOrderTimer;

  Future<void> startListeningToRateOrder(String orderID) async {
    // Cancel previous timer
    _statusFlowForRateOrderTimer?.cancel();

    // Start new timer
    _statusFlowForRateOrderTimer = Timer.periodic(
      const Duration(seconds: 2),
      (_) async {
        print('Rate order $orderID ${_.tick}');
        // Check if order is completed
        if (_.tick %3 == 0) {
          _statusFlowForRateOrderTimer?.cancel();
        }
      },
    );
  }

  startListeningToRateOrder('333');
  await Future.delayed(const Duration(seconds: 7));
  startListeningToRateOrder('666');

}
