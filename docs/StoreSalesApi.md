# WWW::SwaggerClient::StoreSalesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreSalesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_catalog_sale_using_post**](StoreSalesApi.md#create_catalog_sale_using_post) | **POST** /store/sales | Create a sale
[**delete_catalog_sale_using_delete**](StoreSalesApi.md#delete_catalog_sale_using_delete) | **DELETE** /store/sales/{id} | Delete a sale
[**get_catalog_sale_using_get**](StoreSalesApi.md#get_catalog_sale_using_get) | **GET** /store/sales/{id} | Get a single sale
[**get_catalog_sales_using_get**](StoreSalesApi.md#get_catalog_sales_using_get) | **GET** /store/sales | List and search sales
[**update_catalog_sale_using_put**](StoreSalesApi.md#update_catalog_sale_using_put) | **PUT** /store/sales/{id} | Update a sale


# **create_catalog_sale_using_post**
> CatalogSale create_catalog_sale_using_post(catalog_sale => $catalog_sale)

Create a sale

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSalesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSalesApi->new();
my $catalog_sale = WWW::SwaggerClient::Object::CatalogSale->new(); # CatalogSale | The catalog sale object

eval { 
    my $result = $api_instance->create_catalog_sale_using_post(catalog_sale => $catalog_sale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->create_catalog_sale_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_catalog_sale_using_delete**
> delete_catalog_sale_using_delete(id => $id)

Delete a sale

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSalesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSalesApi->new();
my $id = 56; # int | The id of the sale

eval { 
    $api_instance->delete_catalog_sale_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->delete_catalog_sale_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_catalog_sale_using_get**
> CatalogSale get_catalog_sale_using_get(id => $id)

Get a single sale

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSalesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSalesApi->new();
my $id = 56; # int | The id of the sale

eval { 
    my $result = $api_instance->get_catalog_sale_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->get_catalog_sale_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_catalog_sales_using_get**
> PageResourceCatalogSale get_catalog_sales_using_get(size => $size, page => $page, order => $order)

List and search sales

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSalesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSalesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_catalog_sales_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->get_catalog_sales_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCatalogSale**](PageResourceCatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_catalog_sale_using_put**
> update_catalog_sale_using_put(id => $id, catalog_sale => $catalog_sale)

Update a sale

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSalesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSalesApi->new();
my $id = 56; # int | The id of the sale
my $catalog_sale = WWW::SwaggerClient::Object::CatalogSale->new(); # CatalogSale | The catalog sale object

eval { 
    $api_instance->update_catalog_sale_using_put(id => $id, catalog_sale => $catalog_sale);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->update_catalog_sale_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

