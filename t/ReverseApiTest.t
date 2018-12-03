=begin comment

LocationIQ

LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::ReverseApi');

my $api = WWW::OpenAPIClient::ReverseApi->new();
isa_ok($api, 'WWW::OpenAPIClient::ReverseApi');

#
# reverse test
#
{
    my $lat = undef; # replace NULL with a proper value
    my $lon = undef; # replace NULL with a proper value
    my $format = undef; # replace NULL with a proper value
    my $normalizecity = undef; # replace NULL with a proper value
    my $addressdetails = undef; # replace NULL with a proper value
    my $accept_language = undef; # replace NULL with a proper value
    my $namedetails = undef; # replace NULL with a proper value
    my $extratags = undef; # replace NULL with a proper value
    my $result = $api->reverse(lat => $lat, lon => $lon, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, accept_language => $accept_language, namedetails => $namedetails, extratags => $extratags);
}


1;