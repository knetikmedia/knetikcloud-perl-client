# WWW::SwaggerClient::FulfillmentApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::FulfillmentApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_fulfillment_type_using_post**](FulfillmentApi.md#create_fulfillment_type_using_post) | **POST** /store/fulfillment/types | Create a fulfillment type
[**delete_fulfillment_type_using_delete**](FulfillmentApi.md#delete_fulfillment_type_using_delete) | **DELETE** /store/fulfillment/types/{id} | Delete a fulfillment type
[**get_fulfillment_type_using_get**](FulfillmentApi.md#get_fulfillment_type_using_get) | **GET** /store/fulfillment/types/{id} | Get a single fulfillment type
[**get_fulfillments_using_get**](FulfillmentApi.md#get_fulfillments_using_get) | **GET** /store/fulfillment/types | List and search fulfillment types
[**update_fulfillment_type_using_put**](FulfillmentApi.md#update_fulfillment_type_using_put) | **PUT** /store/fulfillment/types/{id} | Update a fulfillment type


# **create_fulfillment_type_using_post**
> FulfillmentType create_fulfillment_type_using_post(type => $type)

Create a fulfillment type

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FulfillmentApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::FulfillmentApi->new();
my $type = WWW::SwaggerClient::Object::FulfillmentType->new(); # FulfillmentType | The fulfillment type

eval { 
    my $result = $api_instance->create_fulfillment_type_using_post(type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FulfillmentApi->create_fulfillment_type_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_fulfillment_type_using_delete**
> delete_fulfillment_type_using_delete(id => $id)

Delete a fulfillment type

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FulfillmentApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::FulfillmentApi->new();
my $id = 56; # int | The id

eval { 
    $api_instance->delete_fulfillment_type_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling FulfillmentApi->delete_fulfillment_type_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_fulfillment_type_using_get**
> FulfillmentType get_fulfillment_type_using_get(id => $id)

Get a single fulfillment type

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FulfillmentApi;

my $api_instance = WWW::SwaggerClient::FulfillmentApi->new();
my $id = 56; # int | The id

eval { 
    my $result = $api_instance->get_fulfillment_type_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FulfillmentApi->get_fulfillment_type_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_fulfillments_using_get**
> PageFulfillmentType get_fulfillments_using_get(size => $size, page => $page, order => $order)

List and search fulfillment types

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FulfillmentApi;

my $api_instance = WWW::SwaggerClient::FulfillmentApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_fulfillments_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FulfillmentApi->get_fulfillments_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageFulfillmentType**](PageFulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_fulfillment_type_using_put**
> update_fulfillment_type_using_put(id => $id, fulfillment_type => $fulfillment_type)

Update a fulfillment type

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FulfillmentApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::FulfillmentApi->new();
my $id = 56; # int | The id
my $fulfillment_type = WWW::SwaggerClient::Object::FulfillmentType->new(); # FulfillmentType | The fulfillment type

eval { 
    $api_instance->update_fulfillment_type_using_put(id => $id, fulfillment_type => $fulfillment_type);
};
if ($@) {
    warn "Exception when calling FulfillmentApi->update_fulfillment_type_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id | 
 **fulfillment_type** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

