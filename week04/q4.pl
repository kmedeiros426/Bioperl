#! /opt/perl/bin/perl 

 use strict;
 use warnings;

use Test::Simple tests => 2;

use DNAgen 'random_sequence';

my $dna = random_sequence(10);

my $dnarand = random_sequence(50,1);


ok(length($dna)==10 , "length matches");

ok($dnarand =~ /^[ACTG]{1,50}$/, "composition and length are good");
