# KnetikCloud::TaxesApi

## Load the API package
```perl
use KnetikCloud::Object::TaxesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_country_tax**](TaxesApi.md#create_country_tax) | **POST** /tax/countries | Create a country tax
[**create_state_tax**](TaxesApi.md#create_state_tax) | **POST** /tax/countries/{country_code_iso3}/states | Create a state tax
[**delete_country_tax**](TaxesApi.md#delete_country_tax) | **DELETE** /tax/countries/{country_code_iso3} | Delete an existing tax
[**delete_state_tax**](TaxesApi.md#delete_state_tax) | **DELETE** /tax/countries/{country_code_iso3}/states/{state_code} | Delete an existing state tax
[**get_country_tax**](TaxesApi.md#get_country_tax) | **GET** /tax/countries/{country_code_iso3} | Get a single tax
[**get_country_taxes**](TaxesApi.md#get_country_taxes) | **GET** /tax/countries | List and search taxes
[**get_state_tax**](TaxesApi.md#get_state_tax) | **GET** /tax/countries/{country_code_iso3}/states/{state_code} | Get a single state tax
[**get_state_taxes_for_countries**](TaxesApi.md#get_state_taxes_for_countries) | **GET** /tax/states | List and search taxes across all countries
[**get_state_taxes_for_country**](TaxesApi.md#get_state_taxes_for_country) | **GET** /tax/countries/{country_code_iso3}/states | List and search taxes within a country
[**update_country_tax**](TaxesApi.md#update_country_tax) | **PUT** /tax/countries/{country_code_iso3} | Create or update a tax
[**update_state_tax**](TaxesApi.md#update_state_tax) | **PUT** /tax/countries/{country_code_iso3}/states/{state_code} | Create or update a state tax


# **create_country_tax**
> CountryTaxResource create_country_tax(tax_resource => $tax_resource)

Create a country tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $tax_resource = KnetikCloud::Object::CountryTaxResource->new(); # CountryTaxResource | The tax object

eval { 
    my $result = $api_instance->create_country_tax(tax_resource => $tax_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->create_country_tax: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_state_tax**
> StateTaxResource create_state_tax(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource)

Create a state tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $tax_resource = KnetikCloud::Object::StateTaxResource->new(); # StateTaxResource | The tax object

eval { 
    my $result = $api_instance->create_state_tax(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->create_state_tax: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_country_tax**
> delete_country_tax(country_code_iso3 => $country_code_iso3)

Delete an existing tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    $api_instance->delete_country_tax(country_code_iso3 => $country_code_iso3);
};
if ($@) {
    warn "Exception when calling TaxesApi->delete_country_tax: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_state_tax**
> delete_state_tax(country_code_iso3 => $country_code_iso3, state_code => $state_code)

Delete an existing state tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state

eval { 
    $api_instance->delete_state_tax(country_code_iso3 => $country_code_iso3, state_code => $state_code);
};
if ($@) {
    warn "Exception when calling TaxesApi->delete_state_tax: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_country_tax**
> CountryTaxResource get_country_tax(country_code_iso3 => $country_code_iso3)

Get a single tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country

eval { 
    my $result = $api_instance->get_country_tax(country_code_iso3 => $country_code_iso3);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_country_tax: $@\n";
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

# **get_country_taxes**
> PageResourceCountryTaxResource get_country_taxes(size => $size, page => $page, order => $order)

List and search taxes

Get a list of taxes

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_country_taxes(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_country_taxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceCountryTaxResource**](PageResourceCountryTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_state_tax**
> StateTaxResource get_state_tax(country_code_iso3 => $country_code_iso3, state_code => $state_code)

Get a single state tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state

eval { 
    my $result = $api_instance->get_state_tax(country_code_iso3 => $country_code_iso3, state_code => $state_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_state_tax: $@\n";
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

# **get_state_taxes_for_countries**
> PageResourceStateTaxResource get_state_taxes_for_countries(size => $size, page => $page, order => $order)

List and search taxes across all countries

Get a list of taxes

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_state_taxes_for_countries(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_state_taxes_for_countries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceStateTaxResource**](PageResourceStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_state_taxes_for_country**
> PageResourceStateTaxResource get_state_taxes_for_country(country_code_iso3 => $country_code_iso3, size => $size, page => $page, order => $order)

List and search taxes within a country

Get a list of taxes

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_state_taxes_for_country(country_code_iso3 => $country_code_iso3, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->get_state_taxes_for_country: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceStateTaxResource**](PageResourceStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_country_tax**
> CountryTaxResource update_country_tax(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource)

Create or update a tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $tax_resource = KnetikCloud::Object::CountryTaxResource->new(); # CountryTaxResource | The tax object

eval { 
    my $result = $api_instance->update_country_tax(country_code_iso3 => $country_code_iso3, tax_resource => $tax_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->update_country_tax: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_state_tax**
> StateTaxResource update_state_tax(country_code_iso3 => $country_code_iso3, state_code => $state_code, tax_resource => $tax_resource)

Create or update a state tax

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TaxesApi;
my $api_instance = KnetikCloud::TaxesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $country_code_iso3 = 'country_code_iso3_example'; # string | The iso3 code of the country
my $state_code = 'state_code_example'; # string | The code of the state
my $tax_resource = KnetikCloud::Object::StateTaxResource->new(); # StateTaxResource | The tax object

eval { 
    my $result = $api_instance->update_state_tax(country_code_iso3 => $country_code_iso3, state_code => $state_code, tax_resource => $tax_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxesApi->update_state_tax: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **string**| The iso3 code of the country | 
 **state_code** | **string**| The code of the state | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

