use v6;

use lib 'lib';
use TagLib;
# use TagLib::FileRef;
use TagLib::ByteVector;

my $path = "/remote/music/Wander/06. Void Settler - Deteriorate.flac";

# my $file =
# say $file;

my $bv = TagLib::ByteVector.new();
say $bv, $bv.isEmpty;
