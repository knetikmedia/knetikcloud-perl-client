# WWW::SwaggerClient::CurrenciesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::CurrenciesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_currency_using_post**](CurrenciesApi.md#create_currency_using_post) | **POST** /currencies | Create a currency
[**delete_currency_using_delete**](CurrenciesApi.md#delete_currency_using_delete) | **DELETE** /currencies/{code} | Delete a currency
[**get_currencies_using_get**](CurrenciesApi.md#get_currencies_using_get) | **GET** /currencies | List and search currencies
[**get_currency_using_get**](CurrenciesApi.md#get_currency_using_get) | **GET** /currencies/{code} | Get a single currency
[**update_currency_using_put**](CurrenciesApi.md#update_currency_using_put) | **PUT** /currencies/{code} | Update a currency


# **create_currency_using_post**
> CurrencyResource create_currency_using_post(currency => $currency)

Create a currency

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CurrenciesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CurrenciesApi->new();
my $currency = WWW::SwaggerClient::Object::CurrencyResource->new(); # CurrencyResource | The currency object

eval { 
    my $result = $api_instance->create_currency_using_post(currency => $currency);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurrenciesApi->create_currency_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_currency_using_delete**
> delete_currency_using_delete(code => $code)

Delete a currency

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CurrenciesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CurrenciesApi->new();
my $code = 'code_example'; # string | The currency code

eval { 
    $api_instance->delete_currency_using_delete(code => $code);
};
if ($@) {
    warn "Exception when calling CurrenciesApi->delete_currency_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **string**| The currency code | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_currencies_using_get**
> PageResourceCurrencyResource get_currencies_using_get(filter_enabled_currencies => $filter_enabled_currencies, filter_type => $filter_type, size => $size, page => $page, order => $order)

List and search currencies

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CurrenciesApi;

my $api_instance = WWW::SwaggerClient::CurrenciesApi->new();
my $filter_enabled_currencies = 1; # boolean | Filter for alternate currencies setup explicitely in system config
my $filter_type = 'filter_type_example'; # string | Filter currencies by type.  Allowable values: ('virtual', 'real')
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_currencies_using_get(filter_enabled_currencies => $filter_enabled_currencies, filter_type => $filter_type, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurrenciesApi->get_currencies_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_enabled_currencies** | **boolean**| Filter for alternate currencies setup explicitely in system config | [optional] 
 **filter_type** | **string**| Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceCurrencyResource**](PageResourceCurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_currency_using_get**
> CurrencyResource get_currency_using_get(code => $code)

Get a single currency

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CurrenciesApi;

my $api_instance = WWW::SwaggerClient::CurrenciesApi->new();
my $code = 'code_example'; # string | The currency code

eval { 
    my $result = $api_instance->get_currency_using_get(code => $code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurrenciesApi->get_currency_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **string**| The currency code | 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_currency_using_put**
> update_currency_using_put(code => $code, currency => $currency)

Update a currency

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CurrenciesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CurrenciesApi->new();
my $code = 'code_example'; # string | The currency code
my $currency = WWW::SwaggerClient::Object::CurrencyResource->new(); # CurrencyResource | The currency object

eval { 
    $api_instance->update_currency_using_put(code => $code, currency => $currency);
};
if ($@) {
    warn "Exception when calling CurrenciesApi->update_currency_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **string**| The currency code | 
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

