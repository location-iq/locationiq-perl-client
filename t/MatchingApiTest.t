=begin comment

LocationIQ

LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

The version of the OpenAPI document: 1.1.0

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

use_ok('WWW::OpenAPIClient::MatchingApi');

my $api = WWW::OpenAPIClient::MatchingApi->new();
isa_ok($api, 'WWW::OpenAPIClient::MatchingApi');

#
# matching test
#
{
    my $coordinates = undef; # replace NULL with a proper value
    my $generate_hints = undef; # replace NULL with a proper value
    my $approaches = undef; # replace NULL with a proper value
    my $exclude = undef; # replace NULL with a proper value
    my $bearings = undef; # replace NULL with a proper value
    my $radiuses = undef; # replace NULL with a proper value
    my $steps = undef; # replace NULL with a proper value
    my $annotations = undef; # replace NULL with a proper value
    my $geometries = undef; # replace NULL with a proper value
    my $overview = undef; # replace NULL with a proper value
    my $timestamps = undef; # replace NULL with a proper value
    my $gaps = undef; # replace NULL with a proper value
    my $tidy = undef; # replace NULL with a proper value
    my $waypoints = undef; # replace NULL with a proper value
    my $result = $api->matching(coordinates => $coordinates, generate_hints => $generate_hints, approaches => $approaches, exclude => $exclude, bearings => $bearings, radiuses => $radiuses, steps => $steps, annotations => $annotations, geometries => $geometries, overview => $overview, timestamps => $timestamps, gaps => $gaps, tidy => $tidy, waypoints => $waypoints);
}


1;
