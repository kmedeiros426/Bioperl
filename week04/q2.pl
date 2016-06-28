package DNAgen;

  use strict;
  use warnings;

use Exporter 'import';
our @EXPORT_OK = ("random_sequence");

sub random_sequence {
    my( $length , $random_length ) = @_;
  
    if ( $random_length ) {
      $length = int( rand( $length ));
    }
  
    foreach ( 1 .. $length ) {
      print $bases[int(rand(4))];
    }
    print "\n";
  }

1;
