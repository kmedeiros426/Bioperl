#! /opt/perl/bin/perl

use warnings;
use strict;

use CGI ( ':standard' );

my $title = 'database search';
print header,
   start_html($title),
   h1($title);

#process form
if(param('submit')){
   if(my $gene = param('gene')){
      SELECT * FROM gene WHERE gene_name=$gene;}
   if(my $organism = param('organism')){
      SELECT * FROM organism WHERE orgname=$organism;}
   if(my $tissue = param('tissue')){
      SELECT * FROM mrna WHERE tissue=$tissue;}
   if(my $explevel = param($explevel)){
      SELECT * FROM mrna WHERE explevel=$explevel;}
}


#print out form
my $url = url();
print start_form( -method => 'GET' , action => $url ),
   p("Gene name:" . textfield( -name => 'gene' )),
   p("Organism:" . textfield( -name => 'organism' )),
   p("Tissue type:" . textfield( -name => 'tissue' )),
   p("Expression level:" . textfield( -name => 'explevel' )),
   p(submit(-name=>'submit', value=>'Submit')),
   end_form(),
   end_html();
