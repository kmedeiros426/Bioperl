package ProtSeq;

use Moose;

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
