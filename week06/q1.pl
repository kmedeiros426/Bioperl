#! /opt/perl/bin/perl
use strict;
use warnings;

use Modern::Perl;

use DBI;

my $dbh = DBI->connect( "DBI:DQLite:dbname-dbfile" , "" , "" ,
   { PrintError => 0, RaiseError => 1} );


