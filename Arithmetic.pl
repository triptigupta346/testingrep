#!/usr/bin/perl
use strict;
use warnings;

package Arithmetic;

use Exporter;

our @ISA = qw(Exporter);

our @EXPORT = qw(add subtract);

our @EXPORT_OK = qw(multiply divide);

my $packname = __PACKAGE__;
print "$packname";

sub add {
my ($no1,$no2) = @_;
my $result;
$result = $no1+$no2;
return $result;
}


sub subtract {
my ($no1,$no2) = @_;
my $result;
$result = $no1-$no2;
return $result;
}