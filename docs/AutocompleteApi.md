# LocationIq::AutocompleteApi

## Load the API package
```perl
use LocationIq::Object::AutocompleteApi;
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete**](AutocompleteApi.md#autocomplete) | **GET** /autocomplete.php | 


# **autocomplete**
> ARRAY[object] autocomplete(q => $q, normalizecity => $normalizecity, limit => $limit, viewbox => $viewbox, bounded => $bounded, countrycodes => $countrycodes, accept_language => $accept_language, tag => $tag)



The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.

### Example 
```perl
use Data::Dumper;
use LocationIq::AutocompleteApi;
my $api_instance = LocationIq::AutocompleteApi->new(

    # Configure API key authorization: key
    api_key => {'key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'key' => 'Bearer'},
);

my $q = "Empire state"; # string | Address to geocode
my $normalizecity = 1; # int | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
my $limit = 10; # int | Limit the number of returned results. Default is 10.
my $viewbox = "-132.84908,47.69382,-70.44674,30.82531"; # string | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
my $bounded = 1; # int | Restrict the results to only items contained with the viewbox
my $countrycodes = "us"; # string | Limit search to a list of countries.
my $accept_language = "en"; # string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
my $tag = "place"; # string | Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag=place:city, To restrict the results to all of OSM class place: tag=place

eval { 
    my $result = $api_instance->autocomplete(q => $q, normalizecity => $normalizecity, limit => $limit, viewbox => $viewbox, bounded => $bounded, countrycodes => $countrycodes, accept_language => $accept_language, tag => $tag);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AutocompleteApi->autocomplete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Address to geocode | 
 **normalizecity** | **int**| For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **limit** | **int**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **viewbox** | **string**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **bounded** | **int**| Restrict the results to only items contained with the viewbox | [optional] 
 **countrycodes** | **string**| Limit search to a list of countries. | [optional] 
 **accept_language** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **tag** | **string**| Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag&#x3D;place:city, To restrict the results to all of OSM class place: tag&#x3D;place | [optional] 

### Return type

**ARRAY[object]**

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

