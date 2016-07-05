#!/opt/perl/bin/perl

use strict;
use warnings;

use CGI(':standard');

my $seqtype=param('seqtype');

my @bases = qw/ A C T G /;

my @aa = qw / A R N D C Q E G H I L K M F P O S U T W Y V B Z /;

if ($seqtype =~ dna){
   foreach(1..50){
      print $bases[int(rand(4))];
   }
elsif ($seqtype =~ aa){
   foreach(1..50){
      print $aa[int(rand(24))};
   }
}

my $url = url();
print start_form(-method=>'GET',action=>$url).
   p("What type of sequence?" . popup_menu(-name =>'seqtype',
                                 -values => ['dna', 'aa'],
                                 -default => 'dna')),
end_form(),
end_html);

