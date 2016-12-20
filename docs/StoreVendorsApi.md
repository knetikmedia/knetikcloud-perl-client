# WWW::SwaggerClient::StoreVendorsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreVendorsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vendor_using_post**](StoreVendorsApi.md#create_vendor_using_post) | **POST** /vendors | Create a vendor
[**delete_vendor_using_delete**](StoreVendorsApi.md#delete_vendor_using_delete) | **DELETE** /vendors/{id} | Delete a vendor
[**get_vendor_using_get**](StoreVendorsApi.md#get_vendor_using_get) | **GET** /vendors/{id} | Get a single vendor
[**get_vendors_using_get**](StoreVendorsApi.md#get_vendors_using_get) | **GET** /vendors | List and search vendors
[**update_vendor_using_put**](StoreVendorsApi.md#update_vendor_using_put) | **PUT** /vendors/{id} | Update a vendor


# **create_vendor_using_post**
> VendorResource create_vendor_using_post(vendor => $vendor)

Create a vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $vendor = WWW::SwaggerClient::Object::VendorResource->new(); # VendorResource | The vendor

eval { 
    my $result = $api_instance->create_vendor_using_post(vendor => $vendor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->create_vendor_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_vendor_using_delete**
> delete_vendor_using_delete(id => $id)

Delete a vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 56; # int | The id of the vendor

eval { 
    $api_instance->delete_vendor_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->delete_vendor_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vendor_using_get**
> VendorResource get_vendor_using_get(id => $id)

Get a single vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 56; # int | The id of the vendor

eval { 
    my $result = $api_instance->get_vendor_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->get_vendor_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vendors_using_get**
> PageVendorResource get_vendors_using_get(filter_name => $filter_name, size => $size, page => $page, order => $order)

List and search vendors

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $filter_name = 'filter_name_example'; # string | Filters vendors by name starting with the text provided in the filter
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_vendors_using_get(filter_name => $filter_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->get_vendors_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **string**| Filters vendors by name starting with the text provided in the filter | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageVendorResource**](PageVendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_vendor_using_put**
> update_vendor_using_put(id => $id, vendor => $vendor)

Update a vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 56; # int | The id of the vendor
my $vendor = WWW::SwaggerClient::Object::VendorResource->new(); # VendorResource | The vendor

eval { 
    $api_instance->update_vendor_using_put(id => $id, vendor => $vendor);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->update_vendor_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

