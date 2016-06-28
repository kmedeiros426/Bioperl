#! /opt/perl/bin/perl
  
#    use strict;
#      use warnings;

my %hoa=(
   white => ['chardonnay', 'moscato', 'riesling'],
   red => ['merlot', 'malbec', 'syrah'],
   sparkling => ['brut', 'prosecco', 'cava'],
);

foreach $k (keys %hoa){
   print " $k:\n";
   foreach $i (0 .. $#{$hoa{$k}}){
      print "    $hoa{$k}[$i]\n";
   }
}
