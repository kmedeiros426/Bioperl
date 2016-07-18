#! /opt/perl/bin/perl

use strict;

use warnings;



use Test::Simple tests => 5;

use dna2aa;

#no start should die
my $aaseq1 = translate_dna(TTGATGGTACCA);
ok($aaseq1 die);

#bad character should die
my $aaseq2 = translate_dna(ATG,TTCCA);
ok($aaseq2 die);

#no stop should return aa seq
my $aaseq3 = translate_dna(ATGTATTGGCAATTT);
ok($aaseq3 'MYWQF');

#input empty should die
my $aaseq4 = translate_dna();
ok($aaseq4 die);

#codon does not exist in hash table should die
my $aaseq5 = translate_dna(ATGTTAHATCCCAAG);
ok($aaseq5 die);
