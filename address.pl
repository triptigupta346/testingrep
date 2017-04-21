#print "enter name=";
#@n=<STDIN>;
#print "enter address=";
#@a=<STDIN>;
#print @a;
#print @n;
#%hash=($n[0],$a[0],$n[1],$a[1],$n[2],$a[2],$n[3],$a[3]);
#print "Enter name=";
#$name=<STDIN>;
#@key=keys %hash;
#print "keys=@key";
#
#while(($key, $value)=each %hash)
#{
# if($key eq $name)
#   {
#     print"address=$value";
#}
#}

$number = 1234567.89;
#$number =~ s/(?<=\d)(?=(\d\d\d)+(?!\d))/,/g;
$number = reverse join ",", (reverse $number) =~ /(\d{1,3})/g;

print $number;