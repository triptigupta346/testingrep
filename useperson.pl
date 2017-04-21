#!/usr/bin/perl
use strict;
use warnings;

use Personpack;

our @ISA=qw(Personpack);

my $object = ob Personpack;

$object->setFirstName('tripti');


print $object->$lastname;