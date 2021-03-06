# LocationIq::ReverseApi

## Load the API package
```perl
use LocationIq::Object::ReverseApi;
```

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](ReverseApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> Location reverse(lat => $lat, lon => $lon, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, accept_language => $accept_language, namedetails => $namedetails, extratags => $extratags, statecode => $statecode, showdistance => $showdistance, postaladdress => $postaladdress)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```perl
use Data::Dumper;
use LocationIq::ReverseApi;
my $api_instance = LocationIq::ReverseApi->new(

    # Configure API key authorization: key
    api_key => {'key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'key' => 'Bearer'},
);

my $lat = 40.7487727; # double | Latitude of the location to generate an address for.
my $lon = -73.9849336; # double | Longitude of the location to generate an address for.
my $format = "json"; # string | Format to geocode. Only JSON supported for SDKs
my $normalizecity = 1; # int | Normalizes village to city level data to city
my $addressdetails = 1; # int | Include a breakdown of the address into elements. Defaults to 1.
my $accept_language = "en"; # string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
my $namedetails = 0; # int | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
my $extratags = 0; # int | Include additional information in the result if available, e.g. wikipedia link, opening hours.
my $statecode = 0; # int | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0
my $showdistance = 0; # int | Returns the straight line distance (meters) between the input location and the result's location. Value is set in the distance key of the response. Defaults to 0 [0,1]
my $postaladdress = 0; # int | Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1]

eval { 
    my $result = $api_instance->reverse(lat => $lat, lon => $lon, format => $format, normalizecity => $normalizecity, addressdetails => $addressdetails, accept_language => $accept_language, namedetails => $namedetails, extratags => $extratags, statecode => $statecode, showdistance => $showdistance, postaladdress => $postaladdress);
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
 **statecode** | **int**| Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 | [optional] 
 **showdistance** | **int**| Returns the straight line distance (meters) between the input location and the result&#39;s location. Value is set in the distance key of the response. Defaults to 0 [0,1] | [optional] 
 **postaladdress** | **int**| Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1] | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

