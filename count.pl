@arr=<STDIN>;
chomp (@arr);
%hash;
foreach $w (@arr)
{
	$hash{$w}=$hash{$w}+1;
	
}
foreach $w (keys %hash)
{
	print "$hash{$w}\n\n"

}