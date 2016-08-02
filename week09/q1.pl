#! /usr/bin/perl

use strict;
use warnings;

use Bio::Perl;

print "Enter fasta file name";
my $infile = <STDIN>;

my @seq;
open( my $IN, $infile ) or die ("can't read $infile ($!)");
while(<$IN>){
   chomp;
   if(/^>/){
      s/^>//;
      my($name)=split/\|/,$_;
      $name=~s/\s/_/g;
      push @seq, {name=>$name};
   }
}
close($IN);

my $ann_collect = $seq>annotation();
my @keys = $ann_collect->get_all_annotation_keys;
foreach my $key (@keys){
   print"----------\n$key:\n";
   
   my @annotations = $ann_collect->get_Annotations( $key );
   foreach( @annotations ) {
      print $_->as_text();
      print "\n\n";
   }
}

print "Choose one or more sequences to BLAST";
my @choices = <STDIN>;
foreach my $choice (@choices){
   my $prot = translate($seq);
   my $blast = blast_sequence($prot);
}
my $outfile = './blast_output';
write_blast(">$file",$blast);

