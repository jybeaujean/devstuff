#!/usr/bin/perl
# Author Jean-Yves Beaujean
# This script extract cover (image) from a m4a file
# Required : package MP4::Info;
# http://search.cpan.org/~jhar/MP4-Info/
# Usage : ./mp4tags.pl <input> <output>
# Example : ./mp4tags file.m4a file_cover.png
#
use MP4::Info;
my $file = @ARGV[0];

my $output = @ARGV[1]; # Output file
open(OUTPUT, ">".$output);	# Open file 

my $tag = get_mp4tag($file) or die "No TAG info";

print OUTPUT $tag->{COVR} ;

close(OUTPUT);	




