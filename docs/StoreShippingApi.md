# WWW::SwaggerClient::StoreShippingApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreShippingApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_shipping_item_using_post**](StoreShippingApi.md#create_shipping_item_using_post) | **POST** /store/shipping | Create a shipping item
[**create_shipping_template_using_post**](StoreShippingApi.md#create_shipping_template_using_post) | **POST** /store/shipping/templates | Create a shipping template
[**delete_shipping_item_using_delete**](StoreShippingApi.md#delete_shipping_item_using_delete) | **DELETE** /store/shipping/{id} | Delete a shipping item
[**delete_shipping_template_using_delete**](StoreShippingApi.md#delete_shipping_template_using_delete) | **DELETE** /store/shipping/templates/{id} | Delete a shipping template
[**get_shipping_item_using_get**](StoreShippingApi.md#get_shipping_item_using_get) | **GET** /store/shipping/{id} | Get a single shipping item
[**get_shipping_template_using_get**](StoreShippingApi.md#get_shipping_template_using_get) | **GET** /store/shipping/templates/{id} | Get a single shipping template
[**get_shipping_templates_using_get**](StoreShippingApi.md#get_shipping_templates_using_get) | **GET** /store/shipping/templates | List and search shipping templates
[**update_shipping_item_using_put**](StoreShippingApi.md#update_shipping_item_using_put) | **PUT** /store/shipping/{id} | Update a shipping item
[**update_shipping_template_using_put**](StoreShippingApi.md#update_shipping_template_using_put) | **PUT** /store/shipping/templates/{id} | Update a shipping template


# **create_shipping_item_using_post**
> ShippingItem create_shipping_item_using_post(shipping_item => $shipping_item)

Create a shipping item

A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $shipping_item = WWW::SwaggerClient::Object::ShippingItem->new(); # ShippingItem | The shipping item object

eval { 
    my $result = $api_instance->create_shipping_item_using_post(shipping_item => $shipping_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->create_shipping_item_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_item** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_shipping_template_using_post**
> ItemTemplateResource create_shipping_template_using_post(shipping_template_resource => $shipping_template_resource)

Create a shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $shipping_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The new shipping template

eval { 
    my $result = $api_instance->create_shipping_template_using_post(shipping_template_resource => $shipping_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->create_shipping_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new shipping template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_shipping_item_using_delete**
> delete_shipping_item_using_delete(id => $id)

Delete a shipping item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $id = 56; # int | The id of the shipping item

eval { 
    $api_instance->delete_shipping_item_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->delete_shipping_item_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_shipping_template_using_delete**
> delete_shipping_template_using_delete(id => $id, cascade => $cascade)

Delete a shipping template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_shipping_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->delete_shipping_template_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shipping_item_using_get**
> ShippingItem get_shipping_item_using_get(id => $id)

Get a single shipping item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $id = 56; # int | The id of the shipping item

eval { 
    my $result = $api_instance->get_shipping_item_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->get_shipping_item_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shipping_template_using_get**
> ItemTemplateResource get_shipping_template_using_get(id => $id)

Get a single shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_shipping_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->get_shipping_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shipping_templates_using_get**
> PageResourceItemTemplateResource get_shipping_templates_using_get(size => $size, page => $page, order => $order)

List and search shipping templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_shipping_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->get_shipping_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceItemTemplateResource**](PageResourceItemTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_shipping_item_using_put**
> update_shipping_item_using_put(id => $id, shipping_item => $shipping_item)

Update a shipping item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $id = 56; # int | The id of the shipping item
my $shipping_item = WWW::SwaggerClient::Object::ShippingItem->new(); # ShippingItem | The shipping item object

eval { 
    $api_instance->update_shipping_item_using_put(id => $id, shipping_item => $shipping_item);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->update_shipping_item_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the shipping item | 
 **shipping_item** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_shipping_template_using_put**
> update_shipping_template_using_put(id => $id, shipping_template_resource => $shipping_template_resource)

Update a shipping template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShippingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShippingApi->new();
my $id = 'id_example'; # string | The id of the template
my $shipping_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The shipping template resource object

eval { 
    $api_instance->update_shipping_template_using_put(id => $id, shipping_template_resource => $shipping_template_resource);
};
if ($@) {
    warn "Exception when calling StoreShippingApi->update_shipping_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **shipping_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The shipping template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
