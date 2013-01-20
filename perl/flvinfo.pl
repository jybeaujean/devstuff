#!/usr/bin/perl
# Author : Jean-Yves Beaujean
# Date : 13-02-2007
# Show informations stored in a FLV fil
# Required
# http://search.cpan.org/~clotho/FLV-Info/lib/FLV/Info.pm

use FLV::Info;

my $reader = FLV::Info->new();

$reader->parse( @ARGV[0]);

my %info = $reader->get_info();

print $reader->report();
