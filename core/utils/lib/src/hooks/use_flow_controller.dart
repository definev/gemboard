import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

FlowController<T> useFlowController<T>(T initialState) {
  final controller = useMemoized(() => FlowController<T>(initialState));
  useEffect(() => controller.dispose, []);
  return controller;
}
