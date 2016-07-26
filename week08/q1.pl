package RestrictionEnzzyme;
use Moose;

has 'name' => (
   is => 'rw',
   isa => 'Str',
);

has 'manufacturer' => 
   is => 'rw',
   isa => 'Str',
);

has 'recogseq' => (
   is => 'rw'
   isa => 'Str',
);


sub cut_dna {
   my $dnaseq = @_;
   my @fragments = split /$recogseq/, $dnaseq;
}
