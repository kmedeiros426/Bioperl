#! /usr/bin/perl

use strict;
use warnings;

my %hash = ( CGC => 'arg' , AUG => 'met' );


return_hashref(%hash);


foreach( keys %$hashref ) {

  print "$_ == $hashref->{$_}\n"

}

sub return_hashref{
   my ($hash_ref) = ( @_ );
   my %hashref = \@_;
   return %hashref;
}
