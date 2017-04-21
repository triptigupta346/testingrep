#!/usr/bin/perl
use strict;
#use Email::Valid;
use warnings;

my @invalid_ids=('#@%^%#$@#$@#.com',
'@domain.com',
'Joe Smith <email@domain.com>',
'email.domain.com',
'email@domain@domain.com',
'.email@domain.com',
'email.@domain.com',
'email..email@domain.com',
'あいうえお@domain.com',
'email@domain.com (Joe Smith)',
'email@domain',
'email@-domain.com',
'email@domain.we',
'email@111.222.333.44444',
'email@domain..com',
'email@[123.123.123.123]',
'“email”@domain.com');

my $st='-';

print "hhhoouo" if($st =~ /^\w$/);

foreach (@invalid_ids){
if($_  =~ /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,})+$/){
	print $_. " is valid\n";
}
}


#if(Email::Valid->address($str)) 
#	{
#            print "$str\n";  
#        }