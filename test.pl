use v6;

use lib 'lib';
use TagLib;
use TagLib::FileRef;
my $path = "/remote/music/Wander/06. Void Settler - Deteriorate.flac";

my $file = TagLib::FileRef.create($path);

say $file;
