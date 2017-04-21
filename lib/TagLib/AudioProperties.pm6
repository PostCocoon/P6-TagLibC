use v6;

use TagLib;
use NativeCall;

class TagLib::AudioProperties is export is repr<CPPStruct>  {
  has Pointer $.vtable;

  enum ReadStyle is native(TagLib.lib) (
    "Fast" => 0,
    "Average" => 1,
    "Accurate" => 2
  );
}
