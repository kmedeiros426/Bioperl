#! /opt/perl/bin/perl
use strict;
use warnings;

use Modern::Perl;

use DBI;

my $dbh = DBI->connect( "DBI:DQLite:dbname-dbfile" , "" , "" ,
   { PrintError => 0, RaiseError => 1} );

$dbh->do("DROP TABLE IF EXISTS mrna");
$dbh->do("CREATE TABLE mrna(
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   geneid INTEGER NOT NULL,
   tissue VARCHAR(255),
   explevel INTEGER,
   orf_start INTEGER,
   orf_stop INTEGER)"
);

$dbh->do("DROP TABLE IF EXISTS gene");
$dbh->do("CREATE TABLE gene(
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   gene_name VARCHAR(255) NOT NULL,
   orgid INTEGER NOT NULL,
   sequence TEXT)"
);

$dbh->do("DROP TABLE IF EXISTS organism");
$dbh->do("CREATE TABLE organism(
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   orgname VARCHAR(255) NOT NULL)"
);

my $fastafile = 'data.fasta';

open (DATA, $fastafile);

my $gene_name='';
my $organism='';
my $tissue='';
my $start='';
my $stop='';
my $exp_level='';
my $sequece='';

while (<DATA>){
   chomp;
   if(/^>+/){
      $gene_name =~ m/>(.+)\|;
      $organism =~ m/>.+\|(.+)\|;
      $tissue =~
      $dbh->do("INSERT INTO gene VALUES(NULL,'$gene_name','$sequence'));
      $dbh->do("INSERT INT0 organism VALUES(NULL,'$organism'));
   }
   else{
      $sequence.=$_;
   }

