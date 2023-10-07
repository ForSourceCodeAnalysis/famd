import 'dart:io';
import 'package:flutter/foundation.dart';

createDir(String dir) {
  Directory directory = Directory(dir);
  if (!directory.existsSync()) {
    directory.create(recursive: true);
  }
}

createFile(String path) {
  File file = File(path);
  file.createSync(recursive: true);
}

deleteFile(String path) {
  File file = File(path);
  if (file.existsSync()) {
    try {
      file.deleteSync(recursive: true);
    } catch (e) {}
  }
}

writeLinesToFile(String path, String text) {
  File file = File(path);
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  file.writeAsString(text, flush: true);
}

deleteDir(String dir) {
  Directory directory = Directory(dir);
  if (directory.existsSync()) {
    try {
      directory.deleteSync(recursive: true);
    } catch (e) {}
  }
}

fileExistsSync(String path) {
  File file = File(path);
  return file.existsSync();
}

List<String> readFile(String path) {
  File file = File(path);
  return file.existsSync() ? file.readAsLinesSync() : [];
}

getPlugAssetsDir(String plugName) {
  String pathSeparator = Platform.pathSeparator;
  String plugDir = 'data${pathSeparator}plugin$pathSeparator$plugName';
  if (Platform.isWindows) {
    String exePath = Platform.resolvedExecutable;
    return exePath.replaceAll(Platform.executable, plugDir);
  }
  return null;
}

getAppRootDir() {
  return Directory.current.path;
}
