use v6;
# unit module TagLib;

use TagLib;
use TagLib::File;
use TagLib::AudioProperties;
use NativeCall;

class TagLib::FileRef is export is repr<CPPStruct>  {
  has Pointer $.vtable;

  method save() returns Bool is native(TagLib.lib) { * };
  method new() is nativeconv("thisgnu") is native(TagLib.lib) { * }
  method create(Pointer[Str], bool $readAudioProperties = False, int32 $readStyle = TagLib::AudioProperties::ReadStyle::Fast) returns TagLib::File is native(TagLib.lib) { * };
}
