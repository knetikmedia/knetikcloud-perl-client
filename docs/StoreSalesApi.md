# KnetikCloud::StoreSalesApi

## Load the API package
```perl
use KnetikCloud::Object::StoreSalesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_catalog_sale**](StoreSalesApi.md#create_catalog_sale) | **POST** /store/sales | Create a sale
[**delete_catalog_sale**](StoreSalesApi.md#delete_catalog_sale) | **DELETE** /store/sales/{id} | Delete a sale
[**get_catalog_sale**](StoreSalesApi.md#get_catalog_sale) | **GET** /store/sales/{id} | Get a single sale
[**get_catalog_sales**](StoreSalesApi.md#get_catalog_sales) | **GET** /store/sales | List and search sales
[**update_catalog_sale**](StoreSalesApi.md#update_catalog_sale) | **PUT** /store/sales/{id} | Update a sale


# **create_catalog_sale**
> CatalogSale create_catalog_sale(catalog_sale => $catalog_sale)

Create a sale

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreSalesApi;
my $api_instance = KnetikCloud::StoreSalesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $catalog_sale = KnetikCloud::Object::CatalogSale->new(); # CatalogSale | The catalog sale object

eval { 
    my $result = $api_instance->create_catalog_sale(catalog_sale => $catalog_sale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->create_catalog_sale: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_catalog_sale**
> delete_catalog_sale(id => $id)

Delete a sale

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreSalesApi;
my $api_instance = KnetikCloud::StoreSalesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the sale

eval { 
    $api_instance->delete_catalog_sale(id => $id);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->delete_catalog_sale: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_catalog_sale**
> CatalogSale get_catalog_sale(id => $id)

Get a single sale

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreSalesApi;
my $api_instance = KnetikCloud::StoreSalesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the sale

eval { 
    my $result = $api_instance->get_catalog_sale(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->get_catalog_sale: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_catalog_sales**
> PageResourceCatalogSale get_catalog_sales(size => $size, page => $page, order => $order)

List and search sales

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreSalesApi;
my $api_instance = KnetikCloud::StoreSalesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_catalog_sales(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->get_catalog_sales: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_catalog_sale**
> CatalogSale update_catalog_sale(id => $id, catalog_sale => $catalog_sale)

Update a sale

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreSalesApi;
my $api_instance = KnetikCloud::StoreSalesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the sale
my $catalog_sale = KnetikCloud::Object::CatalogSale->new(); # CatalogSale | The catalog sale object

eval { 
    my $result = $api_instance->update_catalog_sale(id => $id, catalog_sale => $catalog_sale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSalesApi->update_catalog_sale: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the sale | 
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

