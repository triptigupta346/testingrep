#! /usr/bin/perl
use strict;
#use warnings;


my $str="{{{}{{{}}}";

my @arr = split('',$str);

print $_."\n" foreach(@arr);

my @stack;
my $count=0;

foreach(@arr){
	if($_ eq '{'){
		push(@stack,$_);
	}else{
		if($stack[$#stack] eq '{'){
			pop(@stack);
		} 
		else{
			push(@stack,$_);
		}

	}
}

if(scalar(@stack)%2 ==0){
my @newstack;
foreach(@stack){
	if($_ eq '{') {
	   if($newstack[$#newstack] eq '{'){
			pop(@stack);
			$count++;
		} 
		push(@newstack,$_);
	}else {
		
		if($newstack[$#newstack] eq '{'){
			pop(@stack);
		} 
		else{
			$count++;
			push(@newstack,'{');
		}
	}
}
print "count====".$count;
}else{
print "-1"; }
