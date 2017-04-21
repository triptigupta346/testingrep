#!/usr/bin/perl
use strict;
use warnings;


my $upc='36000241457';

#$upc =~ s/^\s+|\s+$//g; $upc = swarnf( "%012s", $upc );

#warn $upc;

my $hr = upc_check_digit($upc);

warn $hr."\n";

sub upc_check_digit{

my $upc=shift;

my $len=length($upc);
my @upcs=split('',$upc);
my ($i,$evensum, $oddsum)=(0,0,0);

for($i=0;$i<$len-1;$i++){
		warn $upcs[$i]." ";
	}


if($len<12 || $len>12){
	warn "invalid";
	return 0;
}elsif($len==12){

	warn "hereee";

for($i=0;$i<$len-1;$i++){
	if($i%2==0){
		$evensum = $evensum+$upcs[$i];
	}else{
		$oddsum = $oddsum+$upcs[$i];
	}
}
}else{

for($i=0;$i<$len-1;$i++){
	if($i%2==0){
		$oddsum = $oddsum+$upcs[$i];
	}else{	
		$evensum = $evensum+$upcs[$i];
	}
}

} 

my $result=$evensum*3+$oddsum;
my $remider=$result%10;

my $checkdigit=0;
if($remider!=0){
	$checkdigit = 10-$remider;
}

warn "here is upc==".$upcs[$len-1];
warn $evensum."   ".$oddsum."    ".$remider."\n";

if($upcs[$len-1] == $checkdigit){

warn "valid upc";
return 1

}else{
return 0;

}


}

