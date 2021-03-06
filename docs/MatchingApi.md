# LocationIq::MatchingApi

## Load the API package
```perl
use LocationIq::Object::MatchingApi;
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matching**](MatchingApi.md#matching) | **GET** /matching/driving/{coordinates} | Matching Service


# **matching**
> DirectionsMatching matching(coordinates => $coordinates, generate_hints => $generate_hints, approaches => $approaches, exclude => $exclude, bearings => $bearings, radiuses => $radiuses, steps => $steps, annotations => $annotations, geometries => $geometries, overview => $overview, timestamps => $timestamps, gaps => $gaps, tidy => $tidy, waypoints => $waypoints)

Matching Service

Matching API matches or snaps given GPS points to the road network in the most plausible way.  Please note the request might result multiple sub-traces.  Large jumps in the timestamps (> 60s) or improbable transitions lead to trace splits if a complete matching could not be found. The algorithm might not be able to match all points. Outliers are removed if they can not be matched successfully.

### Example 
```perl
use Data::Dumper;
use LocationIq::MatchingApi;
my $api_instance = LocationIq::MatchingApi->new(

    # Configure API key authorization: key
    api_key => {'key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'key' => 'Bearer'},
);

my $coordinates = "-0.16102,51.523854;-0.15797,51.52326;-0.161593,51.522550"; # string | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
my $generate_hints = "false"; # string | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String
my $approaches = "curb;curb;curb"; # string | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)
my $exclude = "toll"; # string | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.
my $bearings = "None"; # string | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180
my $radiuses = "None"; # string | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default)
my $steps = "true"; # string | Returned route steps for each route leg [ true, false (default) ]
my $annotations = "false"; # string | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]
my $geometries = "polyline"; # string | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ]
my $overview = "simplified"; # string | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ]
my $timestamps = "200;300;900"; # string | Timestamps for the input locations in seconds since UNIX epoch. Timestamps need to be monotonically increasing. [ {timestamp};{timestamp}[;{timestamp} ...]  integer seconds since UNIX epoch
my $gaps = "ignore"; # string | Allows the input track splitting based on huge timestamp gaps between points. [ split (default), ignore ]
my $tidy = "false"; # string | Allows the input track modification to obtain better matching quality for noisy tracks. [ true, false (default) ]
my $waypoints = "0;1;2"; # string | Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. [ {index};{index};{index}... ]

eval { 
    my $result = $api_instance->matching(coordinates => $coordinates, generate_hints => $generate_hints, approaches => $approaches, exclude => $exclude, bearings => $bearings, radiuses => $radiuses, steps => $steps, annotations => $annotations, geometries => $geometries, overview => $overview, timestamps => $timestamps, gaps => $gaps, tidy => $tidy, waypoints => $waypoints);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MatchingApi->matching: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coordinates** | **string**| String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 | 
 **generate_hints** | **string**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String | [optional] 
 **approaches** | **string**| Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) | [optional] 
 **exclude** | **string**| Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. | [optional] 
 **bearings** | **string**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 | [optional] 
 **radiuses** | **string**| Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) | [optional] 
 **steps** | **string**| Returned route steps for each route leg [ true, false (default) ] | [optional] 
 **annotations** | **string**| Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] [default to &#39;&quot;false&quot;&#39;]
 **geometries** | **string**| Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] | [optional] [default to &#39;&quot;polyline&quot;&#39;]
 **overview** | **string**| Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] | [optional] [default to &#39;&quot;simplified&quot;&#39;]
 **timestamps** | **string**| Timestamps for the input locations in seconds since UNIX epoch. Timestamps need to be monotonically increasing. [ {timestamp};{timestamp}[;{timestamp} ...]  integer seconds since UNIX epoch | [optional] 
 **gaps** | **string**| Allows the input track splitting based on huge timestamp gaps between points. [ split (default), ignore ] | [optional] [default to &#39;&quot;split&quot;&#39;]
 **tidy** | **string**| Allows the input track modification to obtain better matching quality for noisy tracks. [ true, false (default) ] | [optional] [default to &#39;&quot;false&quot;&#39;]
 **waypoints** | **string**| Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. [ {index};{index};{index}... ] | [optional] 

### Return type

[**DirectionsMatching**](DirectionsMatching.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

