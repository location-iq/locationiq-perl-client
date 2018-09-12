# WWW::OpenAPIClient::ReverseApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ReverseApi;
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](ReverseApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> Location reverse(lat => $lat, lon => $lon, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, accept_language => $accept_language, namedetails => $namedetails, extratags => $extratags)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReverseApi;
my $api_instance = WWW::OpenAPIClient::ReverseApi->new(

    # Configure API key authorization: key
    api_key => {'key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'key' => 'Bearer'},
);

my $lat = 17.24; # double | Latitude of the location to generate an address for.
my $lon = 74.25; # double | Longitude of the location to generate an address for.
my $format = json; # string | Format to geocode. Only JSON supported for SDKs
my $normalizecity = 1; # int | Normalizes village to city level data to city
my $addressdetails = 1; # int | Include a breakdown of the address into elements. Defaults to 1.
my $accept_language = en; # string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
my $namedetails = 0; # int | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
my $extratags = 0; # int | Include additional information in the result if available, e.g. wikipedia link, opening hours.

eval { 
    my $result = $api_instance->reverse(lat => $lat, lon => $lon, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, accept_language => $accept_language, namedetails => $namedetails, extratags => $extratags);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReverseApi->reverse: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| Latitude of the location to generate an address for. | 
 **lon** | **double**| Longitude of the location to generate an address for. | 
 **format** | **string**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **int**| Normalizes village to city level data to city | 
 **addressdetails** | **int**| Include a breakdown of the address into elements. Defaults to 1. | [optional] [default to 1]
 **accept_language** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **namedetails** | **int**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **extratags** | **int**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

