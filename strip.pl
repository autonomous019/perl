#!/usr/bin/perl -p0777

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


#/<!--.*?--\s*>/;
#$blurb = $&;
#$blurb =~ tr/[a-z]/[A-Z]/;
#$blurb =~ s/<!--/ -[[/gs;
#$blurb =~ s/-->/ ]]-/gs;

s/<!--/ -[[/gs;
s/-->/ ]]-/gs;



s/<!--.*?--\s*>//gs;
 
s/<(?:[^>'"]*|(['"]).*?\1)*>//gms;

s/-[[[a-z]/<!--/gms;
#s/ -[[/<!--/gms;
s/]]-/-->/gms;
/<!--.*?--\s*>/;
$blurb = $&;
$blurb =~ tr/[a-z]/[A-Z]/;

s/<!--.*?-->/$blurb/gs;

$lt = $entity{'lt'};
$amp = $entity{'amp'};
$a = $entity{'#65'};
 
s/&lt;/$lt/;
s/&amp;/$amp/;
s/&#65;/$a/;



