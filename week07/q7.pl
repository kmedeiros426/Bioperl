
#! /usr/bin/perl

use strict;
use warnings;

print "Enter first row:\n";
my @a1= <STDIN>;
chomp @a1;
print "Enter second row:\n";
my @a2=<STDIN>;
chomp @a2;
print "Enter third row:\n";
my @a3=<STDIN>;
chomp @a3;

my @aoa = (\@a1 , \@a2 , \@a3 );
my @aoa_transposed = ();


for my $row (@aoa){
   for my $col(0 .. $#{$row}){
      push(@{$aoa_transposed[$col]}, $row->[$col]);
   }
}

for my $transrow (@aoa_transposed){
   for my $transcol (@{$transrow}){
      print $transcol, " ";
   }
   print "\n";
}
