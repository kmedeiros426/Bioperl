use strict;
use warnings;

use Bio::Perl;
use Bio::SeqIO; 

my ($prog, $type, $acc) = @ARGV;

my $factory = Bio::Tools::Run::RemoteBlast->new( -prog       => $prog   ,

                                                 -readmethod => 'SearchIO' );



if ((($prog == 'blastn') || ($prog == 'blastx') || ($prog == 'tblastx')) && ($type == 'protein')){
   print "arguments don't match";
}
elsif ((($prog == 'tblastn') || ($prog == 'blastp')) & ($type == 'dna')){
   print "arguments don't match";
}
else{
   while ( my @rids = $factory->each_rid ) {

  foreach my $rid ( @rids ) {

    my $result = $factory->retrieve_blast( $rid );



    if( ref( $result )) {

      my $output   = $result->next_result();

      my $filename = $output->query_name().$type.".out";

      $factory->save_output( $filename );

      $factory->remove_rid( $rid );

    }

    elsif( $result < 0 ) {

      $factory->remove_rid( $rid );

    }

    else {
sleep 5;

    }

  }

}
}
