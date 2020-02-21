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
package WWW::OpenAPIClient::NearestApi;

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
# nearest
#
# Nearest Service
# 
# @param string $coordinates String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 (required)
# @param string $generate_hints Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
# @param string $exclude Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
# @param string $bearings Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
# @param string $radiuses Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) (optional)
# @param string $approaches Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
# @param int $number Number of nearest segments that should be returned. [ integer &gt;&#x3D; 1 (default 1) ] (optional)
{
    my $params = {
    'coordinates' => {
        data_type => 'string',
        description => 'String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5',
        required => '1',
    },
    'generate_hints' => {
        data_type => 'string',
        description => 'Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String',
        required => '0',
    },
    'exclude' => {
        data_type => 'string',
        description => 'Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.',
        required => '0',
    },
    'bearings' => {
        data_type => 'string',
        description => 'Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180',
        required => '0',
    },
    'radiuses' => {
        data_type => 'string',
        description => 'Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default)',
        required => '0',
    },
    'approaches' => {
        data_type => 'string',
        description => 'Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)',
        required => '0',
    },
    'number' => {
        data_type => 'int',
        description => 'Number of nearest segments that should be returned. [ integer &gt;&#x3D; 1 (default 1) ]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'nearest' } = { 
        summary => 'Nearest Service',
        params => $params,
        returns => 'DirectionsNearest',
        };
}
# @return DirectionsNearest
#
sub nearest {
    my ($self, %args) = @_;

    # verify the required parameter 'coordinates' is set
    unless (exists $args{'coordinates'}) {
      croak("Missing the required parameter 'coordinates' when calling nearest");
    }

    # parse inputs
    my $_resource_path = '/nearest/driving/{coordinates}';

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
    if ( exists $args{'generate_hints'}) {
        $query_params->{'generate_hints'} = $self->{api_client}->to_query_value($args{'generate_hints'});
    }

    # query params
    if ( exists $args{'exclude'}) {
        $query_params->{'exclude'} = $self->{api_client}->to_query_value($args{'exclude'});
    }

    # query params
    if ( exists $args{'bearings'}) {
        $query_params->{'bearings'} = $self->{api_client}->to_query_value($args{'bearings'});
    }

    # query params
    if ( exists $args{'radiuses'}) {
        $query_params->{'radiuses'} = $self->{api_client}->to_query_value($args{'radiuses'});
    }

    # query params
    if ( exists $args{'approaches'}) {
        $query_params->{'approaches'} = $self->{api_client}->to_query_value($args{'approaches'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
    }

    # path params
    if ( exists $args{'coordinates'}) {
        my $_base_variable = "{" . "coordinates" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'coordinates'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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
    my $_response_object = $self->{api_client}->deserialize('DirectionsNearest', $response);
    return $_response_object;
}

1;
