=begin comment

LocationIQ

LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

The version of the OpenAPI document: 1.1.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::ReverseApi;

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
# reverse
#
# Reverse Geocoding
# 
# @param double $lat Latitude of the location to generate an address for. (required)
# @param double $lon Longitude of the location to generate an address for. (required)
# @param string $format Format to geocode. Only JSON supported for SDKs (required)
# @param int $normalizecity Normalizes village to city level data to city (required)
# @param int $addressdetails Include a breakdown of the address into elements. Defaults to 1. (optional, default to 1)
# @param string $accept_language Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native (optional)
# @param int $namedetails Include a list of alternative names in the results. These may include language variants, references, operator and brand. (optional)
# @param int $extratags Include additional information in the result if available, e.g. wikipedia link, opening hours. (optional)
# @param int $statecode Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 (optional)
# @param int $showdistance Returns the straight line distance (meters) between the input location and the result&#39;s location. Value is set in the distance key of the response. Defaults to 0 [0,1] (optional)
# @param int $postaladdress Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1] (optional)
{
    my $params = {
    'lat' => {
        data_type => 'double',
        description => 'Latitude of the location to generate an address for.',
        required => '1',
    },
    'lon' => {
        data_type => 'double',
        description => 'Longitude of the location to generate an address for.',
        required => '1',
    },
    'format' => {
        data_type => 'string',
        description => 'Format to geocode. Only JSON supported for SDKs',
        required => '1',
    },
    'normalizecity' => {
        data_type => 'int',
        description => 'Normalizes village to city level data to city',
        required => '1',
    },
    'addressdetails' => {
        data_type => 'int',
        description => 'Include a breakdown of the address into elements. Defaults to 1.',
        required => '0',
    },
    'accept_language' => {
        data_type => 'string',
        description => 'Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native',
        required => '0',
    },
    'namedetails' => {
        data_type => 'int',
        description => 'Include a list of alternative names in the results. These may include language variants, references, operator and brand.',
        required => '0',
    },
    'extratags' => {
        data_type => 'int',
        description => 'Include additional information in the result if available, e.g. wikipedia link, opening hours.',
        required => '0',
    },
    'statecode' => {
        data_type => 'int',
        description => 'Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0',
        required => '0',
    },
    'showdistance' => {
        data_type => 'int',
        description => 'Returns the straight line distance (meters) between the input location and the result&#39;s location. Value is set in the distance key of the response. Defaults to 0 [0,1]',
        required => '0',
    },
    'postaladdress' => {
        data_type => 'int',
        description => 'Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'reverse' } = { 
        summary => 'Reverse Geocoding',
        params => $params,
        returns => 'Location',
        };
}
# @return Location
#
sub reverse {
    my ($self, %args) = @_;

    # verify the required parameter 'lat' is set
    unless (exists $args{'lat'}) {
      croak("Missing the required parameter 'lat' when calling reverse");
    }

    # verify the required parameter 'lon' is set
    unless (exists $args{'lon'}) {
      croak("Missing the required parameter 'lon' when calling reverse");
    }

    # verify the required parameter 'format' is set
    unless (exists $args{'format'}) {
      croak("Missing the required parameter 'format' when calling reverse");
    }

    # verify the required parameter 'normalizecity' is set
    unless (exists $args{'normalizecity'}) {
      croak("Missing the required parameter 'normalizecity' when calling reverse");
    }

    # parse inputs
    my $_resource_path = '/reverse.php';

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
    if ( exists $args{'lat'}) {
        $query_params->{'lat'} = $self->{api_client}->to_query_value($args{'lat'});
    }

    # query params
    if ( exists $args{'lon'}) {
        $query_params->{'lon'} = $self->{api_client}->to_query_value($args{'lon'});
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
    if ( exists $args{'accept_language'}) {
        $query_params->{'accept-language'} = $self->{api_client}->to_query_value($args{'accept_language'});
    }

    # query params
    if ( exists $args{'namedetails'}) {
        $query_params->{'namedetails'} = $self->{api_client}->to_query_value($args{'namedetails'});
    }

    # query params
    if ( exists $args{'extratags'}) {
        $query_params->{'extratags'} = $self->{api_client}->to_query_value($args{'extratags'});
    }

    # query params
    if ( exists $args{'statecode'}) {
        $query_params->{'statecode'} = $self->{api_client}->to_query_value($args{'statecode'});
    }

    # query params
    if ( exists $args{'showdistance'}) {
        $query_params->{'showdistance'} = $self->{api_client}->to_query_value($args{'showdistance'});
    }

    # query params
    if ( exists $args{'postaladdress'}) {
        $query_params->{'postaladdress'} = $self->{api_client}->to_query_value($args{'postaladdress'});
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
    my $_response_object = $self->{api_client}->deserialize('Location', $response);
    return $_response_object;
}

1;
