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
  method create(Pointer[Str], Bool $readAudioProperties = False, TagLib::AudioProperties::ReadStyle $readStyle = TagLib::AudioProperties::ReadStyle::Fast) returns TagLib::File is native(TagLib.lib) { * };
}
