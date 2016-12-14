# WWW::SwaggerClient::StoreBundlesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreBundlesApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bundle_item_using_post**](StoreBundlesApi.md#create_bundle_item_using_post) | **POST** /store/bundles | Create a bundle item
[**create_bundle_template_using_post**](StoreBundlesApi.md#create_bundle_template_using_post) | **POST** /store/bundles/templates | Create a bundle template
[**delete_bundle_template_using_delete**](StoreBundlesApi.md#delete_bundle_template_using_delete) | **DELETE** /store/bundles/templates/{id} | Delete a bundle template
[**delete_store_item_using_delete**](StoreBundlesApi.md#delete_store_item_using_delete) | **DELETE** /store/bundles/{id} | Delete a bundle item
[**get_bundle_template_using_get**](StoreBundlesApi.md#get_bundle_template_using_get) | **GET** /store/bundles/templates/{id} | Get a single bundle template
[**get_bundle_templates_using_get**](StoreBundlesApi.md#get_bundle_templates_using_get) | **GET** /store/bundles/templates | List and search bundle templates
[**get_store_item_using_get**](StoreBundlesApi.md#get_store_item_using_get) | **GET** /store/bundles/{id} | Get a single bundle item
[**update_bundle_item_using_put**](StoreBundlesApi.md#update_bundle_item_using_put) | **PUT** /store/bundles/{id} | Update a bundle item
[**update_bundle_template_using_put**](StoreBundlesApi.md#update_bundle_template_using_put) | **PUT** /store/bundles/templates/{id} | Update a bundle template


# **create_bundle_item_using_post**
> BundleItem create_bundle_item_using_post(bundle_item => $bundle_item)

Create a bundle item

The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $bundle_item = WWW::SwaggerClient::Object::BundleItem->new(); # BundleItem | The bundle item object

eval { 
    my $result = $api_instance->create_bundle_item_using_post(bundle_item => $bundle_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->create_bundle_item_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_bundle_template_using_post**
> ItemTemplateResource create_bundle_template_using_post(bundle_template_resource => $bundle_template_resource)

Create a bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $bundle_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The new bundle template

eval { 
    my $result = $api_instance->create_bundle_template_using_post(bundle_template_resource => $bundle_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->create_bundle_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new bundle template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bundle_template_using_delete**
> delete_bundle_template_using_delete(id => $id, cascade => $cascade)

Delete a bundle template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_bundle_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->delete_bundle_template_using_delete: $@\n";
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_store_item_using_delete**
> delete_store_item_using_delete(id => $id)

Delete a bundle item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $id = 56; # int | The id of the bundle

eval { 
    $api_instance->delete_store_item_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->delete_store_item_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bundle_template_using_get**
> ItemTemplateResource get_bundle_template_using_get(id => $id)

Get a single bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_bundle_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->get_bundle_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bundle_templates_using_get**
> PageItemTemplateResource get_bundle_templates_using_get(size => $size, page => $page, order => $order)

List and search bundle templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_bundle_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->get_bundle_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageItemTemplateResource**](PageItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store_item_using_get**
> BundleItem get_store_item_using_get(id => $id)

Get a single bundle item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $id = 56; # int | The id of the bundle

eval { 
    my $result = $api_instance->get_store_item_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->get_store_item_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bundle_item_using_put**
> update_bundle_item_using_put(id => $id, bundle_item => $bundle_item)

Update a bundle item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $id = 56; # int | The id of the bundle
my $bundle_item = WWW::SwaggerClient::Object::BundleItem->new(); # BundleItem | The bundle item object

eval { 
    $api_instance->update_bundle_item_using_put(id => $id, bundle_item => $bundle_item);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->update_bundle_item_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bundle_template_using_put**
> update_bundle_template_using_put(id => $id, bundle_template_resource => $bundle_template_resource)

Update a bundle template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreBundlesApi;

my $api_instance = WWW::SwaggerClient::StoreBundlesApi->new();
my $id = 'id_example'; # string | The id of the template
my $bundle_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The bundle template resource object

eval { 
    $api_instance->update_bundle_template_using_put(id => $id, bundle_template_resource => $bundle_template_resource);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->update_bundle_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The bundle template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

