use warnings;
use strict;

package RestrictionEnzyme;


sub new {
   my( $class , $attrib ) = @_;
   my $obj = {
      _name => $attrib{name} || die ("Need a name"),
      _manufacturer => $attrib{manufacturer} || 'unknown',
      _recogseq => $attrib{recogseq} || die ("Need the recognition sequence").
   };
   reurn bless $obj, $class;
}

sub DESTROY {
   my ($self) = (@_);
}

sub cut_dna {
   my $dnaseq = @_;
   my @fragments = split /$recogseq/, $dnaseq;
}

1;
