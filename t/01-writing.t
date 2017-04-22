use v6;
use Test;
use lib 'lib';
use TagLibC::Wrapper;

my $dir = IO::Path.new($?FILE).dirname;
my $testfile = $dir ~ "/test.mp3";
my $abusefile = $dir ~ "/abuse.mp3";
IO::Path.new($testfile).copy($abusefile);

my $track = TagLibC::Wrapper.new($abusefile);
plan 2;
lives-ok {
  $track.title("No!");
  $track.save();
  $track.destroy();
}, "look if I can write a file without problems";

my $track2 = TagLibC::Wrapper.new($abusefile);
ok $track2.title eq "No!", "Check if correctly saved and written";
IO::Path.new($abusefile).unlink();
