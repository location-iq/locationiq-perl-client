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

use_ok('WWW::OpenAPIClient::AutocompleteApi');

my $api = WWW::OpenAPIClient::AutocompleteApi->new();
isa_ok($api, 'WWW::OpenAPIClient::AutocompleteApi');

#
# autocomplete test
#
{
    my $q = undef; # replace NULL with a proper value
    my $normalizecity = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $viewbox = undef; # replace NULL with a proper value
    my $bounded = undef; # replace NULL with a proper value
    my $countrycodes = undef; # replace NULL with a proper value
    my $accept_language = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->autocomplete(q => $q, normalizecity => $normalizecity, limit => $limit, viewbox => $viewbox, bounded => $bounded, countrycodes => $countrycodes, accept_language => $accept_language, tag => $tag);
}


1;
