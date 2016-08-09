#! /opt/perl/bin/perl


use strict;
use warnings;


use Modern::Perl;



use Bio::Tools::Run::RemoteBlast;

STDOUT->autoflush(1);




print "Enter a GenBank accession number";
my $str = <STDIN>;

if ($str =~ /^.{3}) { my $type = 'protein', my $myprog = 'blastp'}
else { my $type = 'nuc', my $myprog = 'blastn'}


my $factory = Bio::Tools::Run::RemoteBlast->new( -prog       => $myprog   ,

                                                 -data       => 'nr'       ,

                                                 -expect     => '1e-10'    ,

                                                 -readmethod => 'SearchIO' );





while( my $seq = $str->next_seq() ) {

  $factory->submit_blast( $seq );

  print '.';

  sleep 5;

}


while ( my $result = $in->next_result ) {
   while (my %hit = $result->next_hit) {
      if ($hit->accession = $str) {
         my $hit = $result->next_hit}
      else {
         my $str2 = $hit->accession;
      }
   }
}



 
while( my $seq2 = $str2->next_seq() ) {

  $factory->submit_blast( $seq2 );

  print '.';

  sleep 5;

}


while ( my $result = $in->next_result ) {
   while (my %hit = $result->next_hit) {
      if ($hit->accession = $str) {
         print "top hit same as original search\n";
         my $hit = $result->next_hit}
      else {
         print "Top Hit:\n";
         print "Name: "$hit->name \n;
         print "Descripton: "$hit->description\n"
         print "Accession: "$hit->accession \n;
         print "Length: "$hit->length \n;
      }
   }
}
