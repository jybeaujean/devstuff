#!/usr/bin/perl
# Author Jean-Yves Beaujean
# Read tags in a m4a file and write it in a properties file (key=value)
# Required : perl : package MP4::Info;
# : http://search.cpan.org/~jhar/MP4-Info/
# Usage : ./mp4tags.pl <input> <output>
# Example : ./mp4tags monfichier.m4a monfichier.properties  
#
use MP4::Info;
my $file = @ARGV[0];

my $output = @ARGV[1]; #  Output file
open(OUTPUT, ">".$output);	

my $tag = get_mp4tag($file) or die "No TAG info";

printf OUTPUT "album=%s\n", $tag->{ALB};
printf OUTPUT "applestoreid=%s\n", $tag->{APID}; 
printf OUTPUT "artist=%s\n", $tag->{ART};
printf OUTPUT "bitrate=%s\n", $tag->{BITRATE};
printf OUTPUT "comment=%s\n", $tag->{CMT};
printf OUTPUT "compilation=%s\n", $tag->{CPIL};
printf OUTPUT "copyright=%s\n", $tag->{CPRT};
printf OUTPUT "year=%s\n", $tag->{DAY};
printf OUTPUT "disknumber=%s\n", $tag->{DISK};
printf OUTPUT "genre=%s\n", $tag->{GNRE};
printf OUTPUT "grouping=%s\n", $tag->{GRP};
printf OUTPUT "track=%s\n", $tag->{NAM};
printf OUTPUT "rating=%s\n", $tag->{RTING};
printf OUTPUT "encoder=%s\n", $tag->{TOO};
printf OUTPUT "rating=%s\n", $tag->{RTING};
printf OUTPUT "tracknumber=%s\n", $tag->{TRKN};
printf OUTPUT "author=%s\n", $tag->{WRT};
printf OUTPUT "time=%s\n", $tag->{TIME};

close(OUTPUT);	










