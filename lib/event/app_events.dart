import 'package:event_bus/event_bus.dart';

/*
 * All Events are maintained here.
 */
class KraslotSwipe {}

class KraslotVisible {}

class KraslotInputReady {}

class KrasLotShowPrice {}

//--- AppEvents -----------------
class AppEvents {
  static final EventBus _sEventBus = EventBus();

  // Only needed if clients want all EventBus functionality.
  static EventBus ebus() => _sEventBus;

  /*
  * The methods below are just convenience shortcuts to make it easier for the client to use.
  */
  static void fireKraslotSwipe() => _sEventBus.fire(KraslotSwipe());
  static void fireKraslotVisible() => _sEventBus.fire(KraslotVisible());
  static void fireKraslotInputReady() => _sEventBus.fire(KraslotInputReady());
  static void fireKrasLotShowPrice() => _sEventBus.fire(KrasLotShowPrice());

  //--
  static void onKraslotSwipe(OnKrasLotSwipeFunc func) =>
      _sEventBus.on<KraslotSwipe>().listen((event) => func(event));
  static void onKraslotVisible(OnKrasLotVisibleFunc func) =>
      _sEventBus.on<KraslotVisible>().listen((event) => func(event));
  static void onKraslotInputReady(OnKrasLotInputReadyFunc func) =>
      _sEventBus.on<KraslotInputReady>().listen((event) => func(event));
  static void onKrasLotShowPrice(OnKrasLotShowPriceFunc func) =>
      _sEventBus.on<KrasLotShowPrice>().listen((event) => func(event));
}

typedef OnKrasLotSwipeFunc = void Function(KraslotSwipe event);
typedef OnKrasLotVisibleFunc = void Function(KraslotVisible event);
typedef OnKrasLotInputReadyFunc = void Function(KraslotInputReady event);
typedef OnKrasLotShowPriceFunc = void Function(KrasLotShowPrice event);
