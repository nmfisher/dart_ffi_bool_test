// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void foo(
    bool bar,
  ) {
    return _foo(
      bar,
    );
  }

  late final _fooPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Bool)>>('foo');
  late final _foo = _fooPtr.asFunction<void Function(bool)>();
}

const int __bool_true_false_are_defined = 1;

const int true1 = 1;

const int false1 = 0;
