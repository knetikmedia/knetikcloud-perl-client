# WWW::SwaggerClient::LocationsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::LocationsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cities_using_get**](LocationsApi.md#cities_using_get) | **GET** /location/countries/{country_code_iso3}/states/{state_code}/cities | Get a list of a state&#39;s cities
[**countries_using_get**](LocationsApi.md#countries_using_get) | **GET** /location/countries | Get a list of countries
[**get_currency_by_geo_location_using_get**](LocationsApi.md#get_currency_by_geo_location_using_get) | **GET** /location/geolocation/currency | Get the currency information of your country
[**get_geo_location_country_using_get**](LocationsApi.md#get_geo_location_country_using_get) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**states_using_get**](LocationsApi.md#states_using_get) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states


# **cities_using_get**
> ARRAY[CityResource] cities_using_get(country_code_iso3 => $country_code_iso3, state_code => $state_code)

Get a list of a state's cities

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state

eval { 
    my $result = $api_instance->cities_using_get(country_code_iso3 => $country_code_iso3, state_code => $state_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->cities_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **state_code** | **string**| The code of the state | 

### Return type

[**ARRAY[CityResource]**](CityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countries_using_get**
> ARRAY[CountryResource] countries_using_get()

Get a list of countries

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->countries_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->countries_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CountryResource]**](CountryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_currency_by_geo_location_using_get**
> CurrencyResource get_currency_by_geo_location_using_get()

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->get_currency_by_geo_location_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_currency_by_geo_location_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_geo_location_country_using_get**
> string get_geo_location_country_using_get()

Get the iso3 code of your country

Determined by geo ip location

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->get_geo_location_country_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_geo_location_country_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **states_using_get**
> ARRAY[StateResource] states_using_get(country_code_iso3 => $country_code_iso3)

Get a list of a country's states

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    my $result = $api_instance->states_using_get(country_code_iso3 => $country_code_iso3);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->states_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 

### Return type

[**ARRAY[StateResource]**](StateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

