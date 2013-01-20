#!/usr/bin/perl
#####################################################
# amazon.pl
# Jean-Yves Beaujean 
# feb 2007
# Get cd cover from Amazon with a given ASIN
# Required : Perl Net::Amazon
# URL : http://search.cpan.org/~boumenot/Net-Amazon-0.38/lib/Net/Amazon.pm
# Usage: perl amazon.pl <keyword>
#####################################################

use warnings;
use strict;

use Net::Amazon;
use Net::Amazon::Request::ASIN;
use Data::Dumper;

# Amazon key 
my $ua = Net::Amazon->new(
    token       => '1DVD1FGZBDGNTZM1DB82',
);

# get ASIN
my $asin  =shift @ARGV or die "Usage:perl amazon.pl <asin>";


my $req = Net::Amazon::Request::ASIN->new(
    asin  => $asin
);

my $resp = $ua->search(asin =>$asin);

  # Response is Net::Amazon::ISBN::Response
#my $resp = $ua->request($req);

if($resp->is_success()) 
{
    #print $resp->as_string(), "\n";
    
    my $property = $resp->properties;
	
   my $img_url =  $property->LargeImageUrl ; 
   print $img_url ;
}
