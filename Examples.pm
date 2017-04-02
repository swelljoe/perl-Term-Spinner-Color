package Term::Spinner::Color::Examples;

use lib "./lib";
use Term::Spinner::Color;
use Time::HiRes qw( sleep );

#
my $s = Term::Spinner::Color->new(
  'color' => 'yellow',
  'seq' => [ qw(dooot odoot oodot ooodt ooood ooodt oodot odoot) ],
  );
$s->run_ok("sleep 5", "doot");
$s->run_ok( ["sleep 1", "sleep 1", "false"], "doot doot oh no!");

my $s2 = Term::Spinner::Color->new(
  'colorcycle' => 1,
  'seq' => 'uni_dots' );
$s2->run_ok("sleep 5", "single doot");

my $s3 = Term::Spinner::Color->new();
$s3->run_ok("sleep 5", "default doot");
