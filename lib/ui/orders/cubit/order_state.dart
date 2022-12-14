import 'package:equatable/equatable.dart';
import 'package:flutter_pixel_project/data/model/api/get_orders/Order.dart';

enum OrdersStatus { initial, error, complete, loading, listIsEmpty }

class OrderState extends Equatable {
  final OrdersStatus status;
  final List<Order> loadedOrders;
  final bool hasReachedMax;
  final String orderValidationStatus;

  const OrderState({
    this.loadedOrders = const <Order> [],
    this.status = OrdersStatus.initial,
    this.hasReachedMax = false,
    this.orderValidationStatus = 'PEDNING_APPROVAL',
  });

  OrderState copyWith({
    List<Order>? loadedOrder,
    OrdersStatus? status,
    bool? hasReachedMax,
    String? orderValidationStatus,
  }) {
    return OrderState(
      loadedOrders: loadedOrder ?? this.loadedOrders,
      status: status ?? this.status,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      orderValidationStatus: orderValidationStatus ?? this.orderValidationStatus,
    );
  }

  @override
  List<Object> get props =>
      [status, orderValidationStatus, loadedOrders];
}