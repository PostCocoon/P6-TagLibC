TITLE
=====

TagLibC

SUBTITLE
========

TagLib C bindings in Perl6

SYNOPSIS
========

provides bindings to `libtag_c.so` or `libtag_c.dynlib` or your systems equivalent, you're able to change and read title, track, album, artist, year and genre.

you're also able to read (but not change) samplerate, length, channels and bitrate

class TagLibC::Wrapper
----------------------

An easy wrapper object for taglib_c

### method new

```
method new(
    Str $path
) returns Mu
```

Creates a new TagLibC::Wrapper object from file given. Throws when file doesn't exist

### method get-hash

```
method get-hash() returns Mu
```

Gets a hash with all available info e.g. { album => "Edited & Forgotten", artist => "Sinister Souls", genre => "", info => { bitrate => 270, channels => 2, length => 311, samplerate => 44100 }, title => "3D", track => 3, year => 2014 }

### method length

```
method length() returns Mu
```

Get length from this file in seconds

### method bitrate

```
method bitrate() returns Mu
```

Get bitrate from this file

### method channels

```
method channels() returns Mu
```

Get amount of channels from this file

### method samplerate

```
method samplerate() returns Mu
```

Get the samplerate from this file

### method validate

```
method validate() returns Mu
```

Validate the current file, throws if it's destroyed or not valid

### method artist

```
method artist() returns Mu
```

Get the artist

### method artist

```
method artist(
    Str $artist
) returns Mu
```

Set the artist

### method title

```
method title() returns Mu
```

Get the title

### method title

```
method title(
    Str $title
) returns Mu
```

Set the title

### method album

```
method album() returns Mu
```

Get the album

### method album

```
method album(
    Str $album
) returns Mu
```

Set the album

### method comment

```
method comment() returns Mu
```

Get the comment

### method comment

```
method comment(
    Str $comment
) returns Mu
```

Set the comment

### method genre

```
method genre() returns Mu
```

Get the genre

### method genre

```
method genre(
    Str $genre
) returns Mu
```

Set the genre

### method year

```
method year() returns Mu
```

Get the year

### method year

```
method year(
    $year
) returns Mu
```

Set the year

### method year

```
method year(
    Int $year
) returns Mu
```

Set the year

### method track

```
method track() returns Mu
```

Get the track

### method track

```
method track(
    $track
) returns Mu
```

Set the track

### method track

```
method track(
    Int $track
) returns Mu
```

Set the track

### method destroy

```
method destroy() returns Mu
```

Free all memory and destroy this object

### method save

```
method save() returns Mu
```

Write all changes to the filesystem

module TagLibC
--------------

All functions exposed by libtag_c

### sub library

```
sub library() returns Mu
```

Cached version of library search

### sub library_search

```
sub library_search() returns Mu
```

Search for libtag_c and teturn the most likely location

### sub taglib_set_strings_unicode

```
sub taglib_set_strings_unicode(
    int32 $unicode
) returns Mu
```

By default all strings coming into or out of TagLib's C API are in UTF8. However, it may be desirable for TagLib to operate on Latin1 (ISO-8859-1) strings in which case this should be set to FALSE.

### sub taglib_set_string_management_enabled

```
sub taglib_set_string_management_enabled(
    int32 $management
) returns Mu
```

TagLib can keep track of strings that are created when outputting tag values and clear them using taglib_tag_clear_strings(). This is enabled by default. However if you wish to do more fine grained management of strings, you can do so by setting \a management to FALSE.

### sub taglib_free

```
sub taglib_free(
    NativeCall::Types::Pointer $pointer
) returns Mu
```

Explicitly free a string returned from TagLib

### sub taglib_file_new

```
sub taglib_file_new(
    Str $filename
) returns TagLibC::File
```

Creates a TagLib file based on \a filename. TagLib will try to guess the file type. \returns NULL if the file type cannot be determined or the file cannot be opened.

### sub taglib_file_new_type

```
sub taglib_file_new_type(
    Str $filename, 
    int32 $type
) returns TagLibC::File
```

Creates a TagLib file based on \a filename. Rather than attempting to guess the type, it will use the one specified by \a type.

### sub taglib_file_free

```
sub taglib_file_free(
    TagLibC::File $file
) returns Mu
```

Frees and closes the file.

### sub taglib_file_tag

```
sub taglib_file_tag(
    TagLibC::File $file
) returns TagLibC::Tag
```

Returns a pointer to the tag associated with this file. This will be freed automatically when the file is freed.

### sub taglib_file_audioproperties

```
sub taglib_file_audioproperties(
    TagLibC::File $file
) returns TagLibC::AudioProperties
```

Returns a pointer to the audio properties associated with this file. This will be freed automatically when the file is freed.

### sub taglib_file_save

```
sub taglib_file_save(
    TagLibC::File $file
) returns int32
```

Saves the \a file to disk.

### sub taglib_tag_title

```
sub taglib_tag_title(
    TagLibC::Tag $tag
) returns Str
```

Returns a string with this tag's title. \note By default this string should be UTF8 encoded and its memory should be freed using taglib_tag_free_strings().

### sub taglib_tag_artist

```
sub taglib_tag_artist(
    TagLibC::Tag $tag
) returns Str
```

Returns a string with this tag's artist. \note By default this string should be UTF8 encoded and its memory should be freed using taglib_tag_free_strings().

### sub taglib_tag_album

```
sub taglib_tag_album(
    TagLibC::Tag $tag
) returns Str
```

Returns a string with this tag's album name. \note By default this string should be UTF8 encoded and its memory should be freed using taglib_tag_free_strings().

### sub taglib_tag_comment

```
sub taglib_tag_comment(
    TagLibC::Tag $tag
) returns Str
```

Returns a string with this tag's comment. \note By default this string should be UTF8 encoded and its memory should be freed using taglib_tag_free_strings().

### sub taglib_tag_genre

```
sub taglib_tag_genre(
    TagLibC::Tag $tag
) returns Str
```

Returns a string with this tag's genre. \note By default this string should be UTF8 encoded and its memory should be freed using taglib_tag_free_strings().

### sub taglib_tag_year

```
sub taglib_tag_year(
    TagLibC::Tag $tag
) returns uint32
```

Returns the tag's year or 0 if year is not set.

### sub taglib_tag_track

```
sub taglib_tag_track(
    TagLibC::Tag $tag
) returns uint32
```

Returns the tag's track number or 0 if track number is not set.

### sub taglib_tag_set_title

```
sub taglib_tag_set_title(
    TagLibC::Tag $tag, 
    Str $title
) returns Mu
```

Sets the tag's title. \note By default this string should be UTF8 encoded.

### sub taglib_tag_set_artist

```
sub taglib_tag_set_artist(
    TagLibC::Tag $tag, 
    Str $artist
) returns Mu
```

Sets the tag's artist. \note By default this string should be UTF8 encoded.

### sub taglib_tag_set_album

```
sub taglib_tag_set_album(
    TagLibC::Tag $tag, 
    Str $album
) returns Mu
```

Sets the tag's album. \note By default this string should be UTF8 encoded.

### sub taglib_tag_set_comment

```
sub taglib_tag_set_comment(
    TagLibC::Tag $tag, 
    Str $comment
) returns Mu
```

Sets the tag's comment. \note By default this string should be UTF8 encoded.

### sub taglib_tag_set_genre

```
sub taglib_tag_set_genre(
    TagLibC::Tag $tag, 
    Str $genre
) returns Mu
```

Sets the tag's genre. \note By default this string should be UTF8 encoded.

### sub taglib_tag_set_year

```
sub taglib_tag_set_year(
    TagLibC::Tag $tag, 
    uint32 $year
) returns Mu
```

Sets the tag's year. 0 indicates that this field should be cleared.

### sub taglib_tag_set_track

```
sub taglib_tag_set_track(
    TagLibC::Tag $tag, 
    uint32 $track
) returns Mu
```

Sets the tag's track number. 0 indicates that this field should be cleared.

### sub taglib_tag_free_strings

```
sub taglib_tag_free_strings() returns Mu
```

Frees all of the strings that have been created by the tag.

### sub taglib_audioproperties_length

```
sub taglib_audioproperties_length(
    TagLibC::AudioProperties $audioProperties
) returns int32
```

Returns the length of the file in seconds.

### sub taglib_audioproperties_bitrate

```
sub taglib_audioproperties_bitrate(
    TagLibC::AudioProperties $audioProperties
) returns int32
```

Returns the bitrate of the file in kb/s.

### sub taglib_audioproperties_samplerate

```
sub taglib_audioproperties_samplerate(
    TagLibC::AudioProperties $audioProperties
) returns int32
```

Returns the sample rate of the file in Hz.

### sub taglib_audioproperties_channels

```
sub taglib_audioproperties_channels(
    TagLibC::AudioProperties $audioProperties
) returns int32
```

Returns the number of channels in the audio stream.

