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

=pod
This fucntion generates a DNA sequence of a given length.
There is an optional second argument that, if provided,
will cause the function to generate a DNA sequence of a random length
between 1 and the first argument.
=cut

