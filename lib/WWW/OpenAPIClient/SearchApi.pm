=begin comment

LocationIQ

LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::SearchApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# search
#
# Forward Geocoding
# 
# @param string $q Address to geocode (required)
# @param string $format Format to geocode. Only JSON supported for SDKs (required)
# @param int $normalizecity For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. (required)
# @param int $addressdetails Include a breakdown of the address into elements. Defaults to 0. (optional)
# @param string $viewbox The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. (optional)
# @param int $bounded Restrict the results to only items contained with the viewbox (optional)
# @param int $limit Limit the number of returned results. Default is 10. (optional, default to 10)
# @param string $accept_language Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native (optional)
# @param string $countrycodes Limit search to a list of countries. (optional)
# @param int $namedetails Include a list of alternative names in the results. These may include language variants, references, operator and brand. (optional)
# @param int $dedupe Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested. (optional)
# @param int $extratags Include additional information in the result if available, e.g. wikipedia link, opening hours. (optional)
{
    my $params = {
    'q' => {
        data_type => 'string',
        description => 'Address to geocode',
        required => '1',
    },
    'format' => {
        data_type => 'string',
        description => 'Format to geocode. Only JSON supported for SDKs',
        required => '1',
    },
    'normalizecity' => {
        data_type => 'int',
        description => 'For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.',
        required => '1',
    },
    'addressdetails' => {
        data_type => 'int',
        description => 'Include a breakdown of the address into elements. Defaults to 0.',
        required => '0',
    },
    'viewbox' => {
        data_type => 'string',
        description => 'The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option.',
        required => '0',
    },
    'bounded' => {
        data_type => 'int',
        description => 'Restrict the results to only items contained with the viewbox',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Limit the number of returned results. Default is 10.',
        required => '0',
    },
    'accept_language' => {
        data_type => 'string',
        description => 'Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native',
        required => '0',
    },
    'countrycodes' => {
        data_type => 'string',
        description => 'Limit search to a list of countries.',
        required => '0',
    },
    'namedetails' => {
        data_type => 'int',
        description => 'Include a list of alternative names in the results. These may include language variants, references, operator and brand.',
        required => '0',
    },
    'dedupe' => {
        data_type => 'int',
        description => 'Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested.',
        required => '0',
    },
    'extratags' => {
        data_type => 'int',
        description => 'Include additional information in the result if available, e.g. wikipedia link, opening hours.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search' } = { 
    	summary => 'Forward Geocoding',
        params => $params,
        returns => 'ARRAY[Location]',
        };
}
# @return ARRAY[Location]
#
sub search {
    my ($self, %args) = @_;

    # verify the required parameter 'q' is set
    unless (exists $args{'q'}) {
      croak("Missing the required parameter 'q' when calling search");
    }

    # verify the required parameter 'format' is set
    unless (exists $args{'format'}) {
      croak("Missing the required parameter 'format' when calling search");
    }

    # verify the required parameter 'normalizecity' is set
    unless (exists $args{'normalizecity'}) {
      croak("Missing the required parameter 'normalizecity' when calling search");
    }

    # parse inputs
    my $_resource_path = '/search.php';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'q'}) {
        $query_params->{'q'} = $self->{api_client}->to_query_value($args{'q'});
    }

    # query params
    if ( exists $args{'format'}) {
        $query_params->{'format'} = $self->{api_client}->to_query_value($args{'format'});
    }

    # query params
    if ( exists $args{'normalizecity'}) {
        $query_params->{'normalizecity'} = $self->{api_client}->to_query_value($args{'normalizecity'});
    }

    # query params
    if ( exists $args{'addressdetails'}) {
        $query_params->{'addressdetails'} = $self->{api_client}->to_query_value($args{'addressdetails'});
    }

    # query params
    if ( exists $args{'viewbox'}) {
        $query_params->{'viewbox'} = $self->{api_client}->to_query_value($args{'viewbox'});
    }

    # query params
    if ( exists $args{'bounded'}) {
        $query_params->{'bounded'} = $self->{api_client}->to_query_value($args{'bounded'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'accept_language'}) {
        $query_params->{'accept-language'} = $self->{api_client}->to_query_value($args{'accept_language'});
    }

    # query params
    if ( exists $args{'countrycodes'}) {
        $query_params->{'countrycodes'} = $self->{api_client}->to_query_value($args{'countrycodes'});
    }

    # query params
    if ( exists $args{'namedetails'}) {
        $query_params->{'namedetails'} = $self->{api_client}->to_query_value($args{'namedetails'});
    }

    # query params
    if ( exists $args{'dedupe'}) {
        $query_params->{'dedupe'} = $self->{api_client}->to_query_value($args{'dedupe'});
    }

    # query params
    if ( exists $args{'extratags'}) {
        $query_params->{'extratags'} = $self->{api_client}->to_query_value($args{'extratags'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Location]', $response);
    return $_response_object;
}

1;
