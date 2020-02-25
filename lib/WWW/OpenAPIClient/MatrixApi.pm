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
package WWW::OpenAPIClient::MatrixApi;

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
# matrix
#
# Matrix Service
# 
# @param string $coordinates String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 (required)
# @param string $bearings Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
# @param string $radiuses Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) (optional)
# @param string $generate_hints Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
# @param string $approaches Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
# @param string $exclude Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
# @param string $annotations Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] (optional)
# @param int $sources Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] &#x3D;&gt; index  0 &lt;&#x3D; integer &lt; #locations (optional)
# @param int $destinations Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ] (optional)
# @param double $fallback_speed If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double &gt; 0 (optional)
# @param string $fallback_coordinate When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ] (optional, default to '"input"')
{
    my $params = {
    'coordinates' => {
        data_type => 'string',
        description => 'String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5',
        required => '1',
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
    'generate_hints' => {
        data_type => 'string',
        description => 'Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String',
        required => '0',
    },
    'approaches' => {
        data_type => 'string',
        description => 'Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)',
        required => '0',
    },
    'exclude' => {
        data_type => 'string',
        description => 'Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.',
        required => '0',
    },
    'annotations' => {
        data_type => 'string',
        description => 'Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]',
        required => '0',
    },
    'sources' => {
        data_type => 'int',
        description => 'Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] &#x3D;&gt; index  0 &lt;&#x3D; integer &lt; #locations',
        required => '0',
    },
    'destinations' => {
        data_type => 'int',
        description => 'Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ]',
        required => '0',
    },
    'fallback_speed' => {
        data_type => 'double',
        description => 'If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double &gt; 0',
        required => '0',
    },
    'fallback_coordinate' => {
        data_type => 'string',
        description => 'When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'matrix' } = { 
        summary => 'Matrix Service',
        params => $params,
        returns => 'DirectionsMatrix',
        };
}
# @return DirectionsMatrix
#
sub matrix {
    my ($self, %args) = @_;

    # verify the required parameter 'coordinates' is set
    unless (exists $args{'coordinates'}) {
      croak("Missing the required parameter 'coordinates' when calling matrix");
    }

    # parse inputs
    my $_resource_path = '/matrix/driving/{coordinates}';

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
    if ( exists $args{'bearings'}) {
        $query_params->{'bearings'} = $self->{api_client}->to_query_value($args{'bearings'});
    }

    # query params
    if ( exists $args{'radiuses'}) {
        $query_params->{'radiuses'} = $self->{api_client}->to_query_value($args{'radiuses'});
    }

    # query params
    if ( exists $args{'generate_hints'}) {
        $query_params->{'generate_hints'} = $self->{api_client}->to_query_value($args{'generate_hints'});
    }

    # query params
    if ( exists $args{'approaches'}) {
        $query_params->{'approaches'} = $self->{api_client}->to_query_value($args{'approaches'});
    }

    # query params
    if ( exists $args{'exclude'}) {
        $query_params->{'exclude'} = $self->{api_client}->to_query_value($args{'exclude'});
    }

    # query params
    if ( exists $args{'annotations'}) {
        $query_params->{'annotations'} = $self->{api_client}->to_query_value($args{'annotations'});
    }

    # query params
    if ( exists $args{'sources'}) {
        $query_params->{'sources'} = $self->{api_client}->to_query_value($args{'sources'});
    }

    # query params
    if ( exists $args{'destinations'}) {
        $query_params->{'destinations'} = $self->{api_client}->to_query_value($args{'destinations'});
    }

    # query params
    if ( exists $args{'fallback_speed'}) {
        $query_params->{'fallback_speed'} = $self->{api_client}->to_query_value($args{'fallback_speed'});
    }

    # query params
    if ( exists $args{'fallback_coordinate'}) {
        $query_params->{'fallback_coordinate'} = $self->{api_client}->to_query_value($args{'fallback_coordinate'});
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
    my $_response_object = $self->{api_client}->deserialize('DirectionsMatrix', $response);
    return $_response_object;
}

1;
