package RandomProtein;

use strict;
use warnings;

my @aminoacids = qw/ A R N D C Q E G H I L K M F P S T W Y V/;
my $length = 20;

sub random_protein {
   my($length, $randomlength) = @_;
   my $return;
   if ($randomlength) {
      $length = int (rand ($length));
   }
   foreach (1..$length){
      print $aminoacids[int(rand(20))];
   }
   return $return;
}
1;
