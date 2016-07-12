#! /opt/perl/bin/perl
use strict;
use warnings;

use Modern::Perl;

use DBI;

my $dbh = DBI->connect( "DBI:DQLite:dbname-dbfile" , "" , "" ,
   { PrintError => 0, RaiseError => 1} );

DROP TABLE IF EXISTS mrna;
CREATE TABLE mrna(
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   geneid INTEGER NOT NULL,
   tissue VARCHAR(255),
   explevel INTEGER,
   orf_start INTEGER,
   orf_stop INTEGER
);

DROP TABLE IF EXISTS gene;
CREATE TABLE gene(
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   gene_name VARCHAR(255) NOT NULL,
   orgid INTEGER NOT NULL,
   sequence TEXT
);

DROP TABLE IF EXISTS organism;
CREAE TABLE organism(
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   orgname VARCHAR(255) NOT NULL.
);

 
