import 'dart:io';

///Flutter Cache Manager
///Copyright (c) 2019 Rene Floor
///Released under MIT License.

enum FileSource { NA, Cache, Online }

class FileInfo {
  FileInfo(this.file, this.source, this.validTill, this.originalUrl);
  FileInfo.withError(this.originalUrl, this.error);

  String originalUrl;
  File file;
  FileSource source;
  DateTime validTill;
  Object error;

  /// Returns whether this snapshot contains a non-null [error] value.
  ///
  /// This is always true if the asynchronous computation's last result was
  /// failure.
  bool get hasError => error != null;
}
