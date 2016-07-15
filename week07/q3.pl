#! /usr/bin/perl

use strict;
use warnings;

print "Enter scale input as C or F. \n";
my $scale = <STDIN>;

chomp ($scale);

if ($scale = "C"){
   print "Enter starting temp: ";
   my $cels = <STDIN>;
   chomp ($cels);
   my $faren = ($cels * 1.8) + 32;
   print "$cels degrees C = $faren degrees F \n";
}
elsif ($scale = "F"){
   print "Enter starting temp: ";
   my $faren = <STDIN>;
   chomp ($faren);
   my $cels = ($faren - 32) / 1.8;
   print "$faren degrees F = $cels degrees C \n";
}
else{
   print "Invalid entry, please enter C or F \n";
}
