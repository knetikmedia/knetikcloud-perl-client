# WWW::SwaggerClient::LocationsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::LocationsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_countries**](LocationsApi.md#get_countries) | **GET** /location/countries | Get a list of countries
[**get_country_by_geo_location**](LocationsApi.md#get_country_by_geo_location) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**get_country_states**](LocationsApi.md#get_country_states) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states
[**get_currency_by_geo_location**](LocationsApi.md#get_currency_by_geo_location) | **GET** /location/geolocation/currency | Get the currency information of your country


# **get_countries**
> ARRAY[CountryResource] get_countries()

Get a list of countries

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();

eval { 
    my $result = $api_instance->get_countries();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_countries: $@\n";
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

# **get_country_states**
> ARRAY[StateResource] get_country_states(country_code_iso3 => $country_code_iso3)

Get a list of a country's states

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LocationsApi;

my $api_instance = WWW::SwaggerClient::LocationsApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    my $result = $api_instance->get_country_states(country_code_iso3 => $country_code_iso3);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationsApi->get_country_states: $@\n";
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

