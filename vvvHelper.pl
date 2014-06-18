#! /usr/bin/perl
use strict;
use warnings;


open INFILE, "<", $ARGV[0] or die $!; #open the file for reading that is the first arguement
my @lines = <INFILE>; #write the lines of the file to an array called lines
close INFILE; #close the file

open OUTFILE, ">", $ARGV[1] or die $!; 

foreach(@lines) #for each line do the shit below
{
	chomp($_);
	print $_;
	print OUTFILE $_; #then we write the edited variable's contents to the new file one line at a time. 

$string=$_; 
# then split on first ':'
($begin,$end)=split (/:/,$_,2); 
# remember every () separately
# this assumes that between () there are no more (), eg not (27(b))
while ($end=~m/\((.+?)\)/g) { 
  push (@result,$1); 
}
# add first
unshift (@result,$b);
# if wanted to remove () from first
# check if need to escape
$result[0]=~s/[()]/;

}
close OUTFILE;
