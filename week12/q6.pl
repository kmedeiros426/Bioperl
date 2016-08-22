#! /usr/bin/perl

use warnings;
use strict;

use Bio::Perl;

my $db  = 'genbank';

print "Enter protein sequence accession number: ";

my $acc= <STDIN>;

my $seq  = get_sequence( $db , $acc );

print "Enter e-value cutoff: ";

my $e_cutoff = <STDIN>;

my $factory = Bio::Tools::Run::RemoteBlast->new( -prog       => 'blastp'   ,

                                                 -data       => 'nr'       ,

                                                 -expect     => $e_cutoff    ,

                                                 -readmethod => 'SearchIO' );

$factory->submit_blast( $seq );


while ( my @rids = $factory->each_rid ) {

  foreach my $rid ( @rids ) {

    my $result = $factory->retrieve_blast( $rid );



    if( ref( $result )) {

      my $output   = $result->next_result();

      my $filename = $output->query_name().".out";

      $factory->save_output( $filename );

      $factory->remove_rid( $rid );

    }

    elsif( $result < 0 ) {

      print "no hits satisfy critera";

      $factory->remove_rid( $rid );

    }

    else {

      sleep 5;

    }

  }

}
