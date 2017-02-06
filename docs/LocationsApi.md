# WWW::SwaggerClient::LocationsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::LocationsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cities**](LocationsApi.md#get_cities) | **GET** /location/countries/{country_code_iso3}/states/{state_code}/cities | Get a list of a state&#39;s cities
[**get_countries1**](LocationsApi.md#get_countries1) | **GET** /location/countries | Get a list of countries
[**get_countries2**](LocationsApi.md#get_countries2) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states
[**get_country_by_geo_location**](LocationsApi.md#get_country_by_geo_location) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**get_currency_by_geo_location**](LocationsApi.md#get_currency_by_geo_location) | **GET** /location/geolocation/currency | Get the currency information of your country


# **get_cities**
> ARRAY[CityResource] get_cities(country_code_iso3 => $country_code_iso3, state_code => $state_code)

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
    my $result = $api_instance->get_cities(country_code_iso3 => $country_code_iso3, state_code => $state_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_cities: $@\n";
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

# **get_countries1**
> ARRAY[CountryResource] get_countries1()

Get a list of countries

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->get_countries1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_countries1: $@\n";
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

# **get_countries2**
> ARRAY[StateResource] get_countries2(country_code_iso3 => $country_code_iso3)

Get a list of a country's states

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    my $result = $api_instance->get_countries2(country_code_iso3 => $country_code_iso3);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_countries2: $@\n";
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

# **get_country_by_geo_location**
> string get_country_by_geo_location()

Get the iso3 code of your country

Determined by geo ip location

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->get_country_by_geo_location();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_country_by_geo_location: $@\n";
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

# **get_currency_by_geo_location**
> CurrencyResource get_currency_by_geo_location()

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->get_currency_by_geo_location();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_currency_by_geo_location: $@\n";
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

