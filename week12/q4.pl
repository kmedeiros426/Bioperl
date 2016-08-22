use strict;
use warnings;

use Bio::Perl;
use Bio::SeqIO; 

my ($infile, $output) = @ARGV;

$in = Bio::SeqIO->new(-file => $infile);
$out = Bio::SeqIO->new(-format => $output);

print "$infile $output Wrote $out";
