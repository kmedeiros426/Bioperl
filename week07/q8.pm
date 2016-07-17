use strict;
use warnings;

package dna2aa;

my %aacode = (
'ATT'=>'I', 'ATC'=>'I', 'ATA'=>'I', 
'CTT'=>'L', 'CTC'=>'L', 'CTA'=>'L', 'CTG'=>'L', 'TTA'=>L', 'TTG'=>'L', 
'GTT'=>'V', 'GTC'=>'V', 'GTA'=>'V', 'GTG'=>'V', 
'TTT'=>'F', 'TTC'=>'F', 
'ATG'=>'M', 
'TGT'=>'C', 'TGC'=>'C', 
'GCT'=>'A', 'GCC'=>'A', 'GCA'=>'A', 'GCG'=>'A', 
'GGT'=>'G', 'GGC'=>'G', 'GGA'=>'G', 'GGG'=>'G', 
'CCT'=>'P', 'CCC'=>'P', 'CCA'=>'P', 'CCG'=>'P',
'ACT'=>'T', 'ACC'=>'T', 'ACA'=>'T', 'ACG'=>'T', 
'TCT'=>'S', 'TCC'=>'S', 'TCA'=>'S', 'TCG'=>'S', 'AGT'=>'S', 'AGC'=>'S', 
'TAT'=>'Y', 'TAC'=>'Y', 
'TGG'=>'W', 
'CAA'=>'Q', 'CAG'=>'Q',
'AAT'=>'N', 'AAC'=>'N', 
'CAT=>'H', 'CAC'=>'H', 
'GAA'=>'E', 'GAG'=>'E', 
'GAT'=>'D', 'GAC'=>'D', 
'AAA'=>'K', 'AAG'=>'K', 
'CGT'=>'R', 'CGC'=>'R', 'CGA'=>'R', 'CGG'=>'R', 'AGA'=>'R', 'AGG'=>'R',
'TAA'=>'STOP', 'TAG'=>'STOP', 'TGA'=>'STOP');


sub translate_dna{
   my($dna)=@_;
   my $protein = '';
   
   if($dna =~ ^ATG.){
      for(my $i=0; $i<(length($dna)-2); $i+=3){
         $protein .= translate_codon (substr($dna,$i,3));
      }
      return $protein;
   }else{
      die "DNA sequence did not start with 'ATG'";
   }
}


sub translate_codon{
   my($codon)=@_;
   $codon = uc @codon;
   if(exists $aacode($codon){
      return $aacode($codon);
   }else{
      die "$codon does not exists\n";
   }

1;
