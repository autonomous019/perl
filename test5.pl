#!/usr/bin/perl 


@poem = ("how", "now", "brown", "cow");
shift(@poem);
print "@poem";

print "@mystery";
printf "The number is %-5d", 29;

print "\n";

%entity = (

    lt => '<',         #a less-than
    gt => '>',         #a greater-than
    amp => '&',        #an ampersand
    quot => '"',       #a (vertical) double-quote
    nbsp => chr 160,   #no-break space
    iexcl => chr 161,  #inverted exclamation mark
    cent => chr 162,   #cent sign
    pound => chr 163,  #pound sterling
    curren => chr 164, #general currency sign
    '#65'     => 'A'       #ASCII 65 becomes captital 'A'

);



s/<!--/ -[[/gs;
s/-->/ ]]-/gs;



s/<!--.*?--\s*>//gs;
 
s/<(?:[^>'"]*|(['"]).*?\1)*>//gms;

print "$#ARGV + 1";

$fish = "Red";

sub fishing {
    my $fish = "blue";
}
&fishing; 
print "$fish\n";

&howdy('red', 'fish');
sub howdy {
    print "$_[0]\n";
}
