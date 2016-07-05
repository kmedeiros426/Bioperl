use strict;
use warnings;

print "enter firt array";
my $arr1[$i] = <STDIN>;

print "enter second array";
my $arr2[$i] = <STDIN>;

multarray(\@arr1, \@arr2);

sub multarray{
   my ($ar1, $ar2)=@_;
   for(my $i=0; $i<3; $i++){
      for(my $j=0; j<3; $j++){
         my $x = $ar1->[$i]*$ar2->[$j];
         print $x."\t";
      }
      print "\n";
   }
}
