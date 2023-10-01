import 'package:event_bus/event_bus.dart';

import '../entity/TaskInfo.dart';

class EventBusUtil {
  // 私有静态变量，用于保存单例实例
  static final EventBusUtil _instance = EventBusUtil._internal();

  // 工厂构造方法，返回单例实例
  factory EventBusUtil() => _instance;

  late EventBus eventBus;

  // 私有构造方法，防止外部实例化
  EventBusUtil._internal() {
    eventBus = EventBus();
  }
}

class Aria2ServerEvent {
  bool online;

  Aria2ServerEvent(this.online);
}

class AddTaskEvent {
  AddTaskEvent();
}

class TaskInfoEvent {
  TaskInfo? taskInfo;
  TaskInfoEvent(this.taskInfo);
}

class ListAria2Notifications {
  String data;
  ListAria2Notifications(this.data);
}

class DownSuccessEvent {
  DownSuccessEvent();
}
