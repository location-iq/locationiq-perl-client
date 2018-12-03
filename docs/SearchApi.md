# WWW::OpenAPIClient::SearchApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SearchApi;
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SearchApi.md#search) | **GET** /search.php | Forward Geocoding


# **search**
> ARRAY[Location] search(q => $q, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, viewbox => $viewbox, bounded => $bounded, limit => $limit, accept_language => $accept_language, countrycodes => $countrycodes, namedetails => $namedetails, dedupe => $dedupe, extratags => $extratags)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SearchApi;
my $api_instance = WWW::OpenAPIClient::SearchApi->new(

    # Configure API key authorization: key
    api_key => {'key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'key' => 'Bearer'},
);

my $q = "Empire state building"; # string | Address to geocode
my $format = "json"; # string | Format to geocode. Only JSON supported for SDKs
my $normalizecity = 1; # int | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
my $addressdetails = 1; # int | Include a breakdown of the address into elements. Defaults to 0.
my $viewbox = "-132.84908,47.69382,-70.44674,30.82531"; # string | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option.
my $bounded = 1; # int | Restrict the results to only items contained with the viewbox
my $limit = 10; # int | Limit the number of returned results. Default is 10.
my $accept_language = "en"; # string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
my $countrycodes = "us"; # string | Limit search to a list of countries.
my $namedetails = 1; # int | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
my $dedupe = 1; # int | Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested.
my $extratags = 0; # int | Include additional information in the result if available, e.g. wikipedia link, opening hours.

eval { 
    my $result = $api_instance->search(q => $q, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, viewbox => $viewbox, bounded => $bounded, limit => $limit, accept_language => $accept_language, countrycodes => $countrycodes, namedetails => $namedetails, dedupe => $dedupe, extratags => $extratags);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchApi->search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Address to geocode | 
 **format** | **string**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **int**| For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **addressdetails** | **int**| Include a breakdown of the address into elements. Defaults to 0. | [optional] 
 **viewbox** | **string**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. | [optional] 
 **bounded** | **int**| Restrict the results to only items contained with the viewbox | [optional] 
 **limit** | **int**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **accept_language** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **string**| Limit search to a list of countries. | [optional] 
 **namedetails** | **int**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **dedupe** | **int**| Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested. | [optional] 
 **extratags** | **int**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 

### Return type

[**ARRAY[Location]**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
