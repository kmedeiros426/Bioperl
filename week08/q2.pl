#!/usr/bin/perl
use strict;
use warnings;
 
 =pod
  
 =head1

The RestrictionEnzyme class takes 3 arguments:
   name of the enzyme, which is required as a string
   name of the manufacturer as a string
   the enzyme recognition sequence, which is required as a string

There is a cut_dna method that takes a dna sequence as an argument
and returns an array of of the resulting fragments digested by the restriction enzyme. 

=cut
