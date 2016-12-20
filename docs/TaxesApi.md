# WWW::SwaggerClient::TaxesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::TaxesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tax_using_post**](TaxesApi.md#create_tax_using_post) | **POST** /tax/countries/{country_code_iso3}/states | Create a tax
[**delete_tax_using_delete**](TaxesApi.md#delete_tax_using_delete) | **DELETE** /tax/countries/{country_code_iso3} | Delete an existing tax
[**delete_tax_using_delete1**](TaxesApi.md#delete_tax_using_delete1) | **DELETE** /tax/countries/{country_code_iso3}/states/{state_code} | Delete an existing tax
[**get_all_taxes_using_get**](TaxesApi.md#get_all_taxes_using_get) | **GET** /tax/states | List and search taxes across all countries
[**get_tax_using_get**](TaxesApi.md#get_tax_using_get) | **GET** /tax/countries/{country_code_iso3} | Get a single tax
[**get_tax_using_get1**](TaxesApi.md#get_tax_using_get1) | **GET** /tax/countries/{country_code_iso3}/states/{state_code} | Get a single tax
[**get_taxes_using_get**](TaxesApi.md#get_taxes_using_get) | **GET** /tax/countries | List and search taxes
[**get_taxes_using_get1**](TaxesApi.md#get_taxes_using_get1) | **GET** /tax/countries/{country_code_iso3}/states | List and search taxes within a country
[**update_tax_using_post**](TaxesApi.md#update_tax_using_post) | **POST** /tax/countries | Create a tax
[**update_tax_using_put**](TaxesApi.md#update_tax_using_put) | **PUT** /tax/countries/{country_code_iso3} | Create or update a tax
[**update_tax_using_put1**](TaxesApi.md#update_tax_using_put1) | **PUT** /tax/countries/{country_code_iso3}/states/{state_code} | Create or update a tax


# **create_tax_using_post**
> create_tax_using_post(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource)

Create a tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $tax_resource = WWW::SwaggerClient::Object::StateTaxResource->new(); # StateTaxResource | The tax object

eval { 
    $api_instance->create_tax_using_post(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource);
};
if ($@) {
    warn "Exception when calling TaxesApi->create_tax_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tax_using_delete**
> delete_tax_using_delete(country_code_iso3 => $country_code_iso3)

Delete an existing tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    $api_instance->delete_tax_using_delete(country_code_iso3 => $country_code_iso3);
};
if ($@) {
    warn "Exception when calling TaxesApi->delete_tax_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tax_using_delete1**
> delete_tax_using_delete1(country_code_iso3 => $country_code_iso3, state_code => $state_code)

Delete an existing tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state

eval { 
    $api_instance->delete_tax_using_delete1(country_code_iso3 => $country_code_iso3, state_code => $state_code);
};
if ($@) {
    warn "Exception when calling TaxesApi->delete_tax_using_delete1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **state_code** | **string**| The code of the state | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_taxes_using_get**
> PageStateTaxResource get_all_taxes_using_get(size => $size, page => $page, order => $order)

List and search taxes across all countries

Get a list of taxes

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_all_taxes_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_all_taxes_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageStateTaxResource**](PageStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tax_using_get**
> CountryTaxResource get_tax_using_get(country_code_iso3 => $country_code_iso3)

Get a single tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    my $result = $api_instance->get_tax_using_get(country_code_iso3 => $country_code_iso3);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_tax_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tax_using_get1**
> StateTaxResource get_tax_using_get1(country_code_iso3 => $country_code_iso3, state_code => $state_code)

Get a single tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state

eval { 
    my $result = $api_instance->get_tax_using_get1(country_code_iso3 => $country_code_iso3, state_code => $state_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_tax_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **state_code** | **string**| The code of the state | 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_taxes_using_get**
> PageCountryTaxResource get_taxes_using_get(size => $size, page => $page, order => $order)

List and search taxes

Get a list of taxes

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_taxes_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_taxes_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageCountryTaxResource**](PageCountryTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_taxes_using_get1**
> PageStateTaxResource get_taxes_using_get1(country_code_iso3 => $country_code_iso3, size => $size, page => $page, order => $order)

List and search taxes within a country

Get a list of taxes

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_taxes_using_get1(country_code_iso3 => $country_code_iso3, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_taxes_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageStateTaxResource**](PageStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tax_using_post**
> update_tax_using_post(tax_resource => $tax_resource)

Create a tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $tax_resource = WWW::SwaggerClient::Object::CountryTaxResource->new(); # CountryTaxResource | The tax object

eval { 
    $api_instance->update_tax_using_post(tax_resource => $tax_resource);
};
if ($@) {
    warn "Exception when calling TaxesApi->update_tax_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tax_using_put**
> update_tax_using_put(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource)

Create or update a tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $tax_resource = WWW::SwaggerClient::Object::CountryTaxResource->new(); # CountryTaxResource | The tax object

eval { 
    $api_instance->update_tax_using_put(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource);
};
if ($@) {
    warn "Exception when calling TaxesApi->update_tax_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tax_using_put1**
> update_tax_using_put1(country_code_iso3 => $country_code_iso3, state_code => $state_code, tax_resource => $tax_resource)

Create or update a tax

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::TaxesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::TaxesApi->new();
my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state
my $tax_resource = WWW::SwaggerClient::Object::StateTaxResource->new(); # StateTaxResource | The tax object

eval { 
    $api_instance->update_tax_using_put1(country_code_iso3 => $country_code_iso3, state_code => $state_code, tax_resource => $tax_resource);
};
if ($@) {
    warn "Exception when calling TaxesApi->update_tax_using_put1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **state_code** | **string**| The code of the state | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

