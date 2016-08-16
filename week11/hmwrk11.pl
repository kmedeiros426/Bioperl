#!/opt/perl/bin/perl

use strict;
use warnings;
use CGI(':standard');
use Bio::Tools::EUtilities;

print start_form(
   p("Entrez query: " . textfield( -query => 'query' )),
   p("Enter search type: " . textfield( -type => "type' )),
   end_form();

my $query = param('query');
my $type = param('type');

my $factory = Bio::DB::EUtilities->new(-eutil => 'egquery',
                                       -term  => $query and $type); 


while (my $egq = $factory->next_GlobalQuery) {
   print "Database: ",$egq->get_database, "\t";
   print "Count: ",$egq->get_count, "\n";
}
