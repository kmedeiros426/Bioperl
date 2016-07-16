#! /usr/bin/perl

use strict;
use warnings;

#oligo input

print "Enter oligo:\n";
my $oligo = <>;


#get oligo AT GC content

my $oligo_gc = gc_count($oligo);
my $oligo_at = at_count($oligo);

sub gc_count{
   my $oligoin =$_[0];
   my $gc_count=0;
   $gc_count++ while ($oligoin =~ m/[GC]/gi);
   return $gc_count;
}

sub at_count{
   my $oligoin = $_[0];
   my $at_count=0;
   $at_count++ while ($oligoin =~ m/[AT]/gi);
   return $at_count;
}
   


#compute annealing temperature

my $annealtemp = anneal_temp($oligo);

sub anneal_temp{
   my $oligoin = $_;
   my $gc = $oligo_gc;
   my $at = $oligo_at;
   my $gc_temp =  $gc*4;
   my $at_temp = $at*2;
   my $totaltemp = $gc_temp + $at_temp;
   return $totaltemp;
}


#output

my $oligolen = (length($oligo)-1);
my $gc_perc = ($oligo_gc/$oligolen)*100;

print "The annealing temperature is: $annealtemp degrees C\n";

print "This oligo is $gc_perc percent G and C\n";
