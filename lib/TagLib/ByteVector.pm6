use v6;
use NativeCall;
use TagLib;

class TagLib::ByteVector is export is repr<CPPStruct> {
  has Pointer $.vtable;
  method new() is nativeconv("thisgnu") is native(TagLib.lib) { * };
  method isEmpty() returns Bool is constant is native(TagLib.lib) { * };
}
