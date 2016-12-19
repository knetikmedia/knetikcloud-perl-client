# WWW::SwaggerClient::StoreApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_item_template_using_post**](StoreApi.md#create_item_template_using_post) | **POST** /store/items/templates | Create an item template
[**create_store_item_external_using_post**](StoreApi.md#create_store_item_external_using_post) | **POST** /store/items | Create a store item
[**delete_item_template_using_delete**](StoreApi.md#delete_item_template_using_delete) | **DELETE** /store/items/templates/{id} | Delete an item template
[**delete_store_item_using_delete1**](StoreApi.md#delete_store_item_using_delete1) | **DELETE** /store/items/{id} | Delete a store item
[**get_item_template_using_get**](StoreApi.md#get_item_template_using_get) | **GET** /store/items/templates/{id} | Get a single item template
[**get_item_templates_using_get**](StoreApi.md#get_item_templates_using_get) | **GET** /store/items/templates | List and search item templates
[**get_store_item_using_get1**](StoreApi.md#get_store_item_using_get1) | **GET** /store/items/{id} | Get a single store item
[**get_store_items_using_get**](StoreApi.md#get_store_items_using_get) | **GET** /store/items | List and search store items
[**get_using_get2**](StoreApi.md#get_using_get2) | **GET** /store | Get a listing of store items
[**update_item_template_using_put**](StoreApi.md#update_item_template_using_put) | **PUT** /store/items/templates/{id} | Update an item template
[**update_store_item_external_using_put**](StoreApi.md#update_store_item_external_using_put) | **PUT** /store/items/{id} | Update a store item


# **create_item_template_using_post**
> StoreItemTemplateResource create_item_template_using_post(item_template_resource => $item_template_resource)

Create an item template

Item Templates define a type of item and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $item_template_resource = WWW::SwaggerClient::Object::StoreItemTemplateResource->new(); # StoreItemTemplateResource | The new item template

eval { 
    my $result = $api_instance->create_item_template_using_post(item_template_resource => $item_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->create_item_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_template_resource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The new item template | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_store_item_external_using_post**
> StoreItem create_store_item_external_using_post(store_item => $store_item)

Create a store item

SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $store_item = WWW::SwaggerClient::Object::StoreItem->new(); # StoreItem | The store item object

eval { 
    my $result = $api_instance->create_store_item_external_using_post(store_item => $store_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->create_store_item_external_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_item** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_item_template_using_delete**
> delete_item_template_using_delete(id => $id, cascade => $cascade)

Delete an item template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_item_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreApi->delete_item_template_using_delete: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_store_item_using_delete1**
> delete_store_item_using_delete1(id => $id)

Delete a store item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $id = 56; # int | The id of the item

eval { 
    $api_instance->delete_store_item_using_delete1(id => $id);
};
if ($@) {
    warn "Exception when calling StoreApi->delete_store_item_using_delete1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_template_using_get**
> StoreItemTemplateResource get_item_template_using_get(id => $id)

Get a single item template

Item Templates define a type of item and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_item_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_item_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_templates_using_get**
> PageStoreItemTemplateResource get_item_templates_using_get(size => $size, page => $page, order => $order)

List and search item templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_item_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_item_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageStoreItemTemplateResource**](PageStoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store_item_using_get1**
> StoreItem get_store_item_using_get1(id => $id)

Get a single store item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $id = 56; # int | The id of the item

eval { 
    my $result = $api_instance->get_store_item_using_get1(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_store_item_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store_items_using_get**
> PageStoreItem get_store_items_using_get(filter_name_search => $filter_name_search, filter_unique_key => $filter_unique_key, filter_published => $filter_published, filter_displayable => $filter_displayable, filter_start => $filter_start, filter_end => $filter_end, filter_start_date => $filter_start_date, filter_stop_date => $filter_stop_date, filter_sku => $filter_sku, filter_price => $filter_price, filter_tag => $filter_tag, filter_items_by_type => $filter_items_by_type, filter_bundled_skus => $filter_bundled_skus, size => $size, page => $page, order => $order)

List and search store items

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $filter_name_search = 'filter_name_search_example'; # string | Filter for items whose name starts with a given string.
my $filter_unique_key = 'filter_unique_key_example'; # string | Filter for items whose unique_key is a given string.
my $filter_published = 1; # boolean | Filter for skus that have been published.
my $filter_displayable = 1; # boolean | Filter for items that are displayable.
my $filter_start = 'filter_start_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
my $filter_end = 'filter_end_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
my $filter_start_date = 'filter_start_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
my $filter_stop_date = 'filter_stop_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
my $filter_sku = 'filter_sku_example'; # string | Filter for skus whose name starts with a given string.
my $filter_price = 'filter_price_example'; # string | A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).
my $filter_tag = 'filter_tag_example'; # string | A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.
my $filter_items_by_type = 'filter_items_by_type_example'; # string | Filter for item type based on its type hint.
my $filter_bundled_skus = 'filter_bundled_skus_example'; # string | Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is 'bundle_item'
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_store_items_using_get(filter_name_search => $filter_name_search, filter_unique_key => $filter_unique_key, filter_published => $filter_published, filter_displayable => $filter_displayable, filter_start => $filter_start, filter_end => $filter_end, filter_start_date => $filter_start_date, filter_stop_date => $filter_stop_date, filter_sku => $filter_sku, filter_price => $filter_price, filter_tag => $filter_tag, filter_items_by_type => $filter_items_by_type, filter_bundled_skus => $filter_bundled_skus, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_store_items_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name_search** | **string**| Filter for items whose name starts with a given string. | [optional] 
 **filter_unique_key** | **string**| Filter for items whose unique_key is a given string. | [optional] 
 **filter_published** | **boolean**| Filter for skus that have been published. | [optional] 
 **filter_displayable** | **boolean**| Filter for items that are displayable. | [optional] 
 **filter_start** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_end** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_start_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_stop_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_sku** | **string**| Filter for skus whose name starts with a given string. | [optional] 
 **filter_price** | **string**| A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_tag** | **string**| A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags. | [optional] 
 **filter_items_by_type** | **string**| Filter for item type based on its type hint. | [optional] 
 **filter_bundled_skus** | **string**| Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39; | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageStoreItem**](PageStoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_using_get2**
> PageStoreItem get_using_get2(store_list_request => $store_list_request)

Get a listing of store items

The exact structure of each items may differ to include fields specific to the type. The same is true for behaviors.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $store_list_request = WWW::SwaggerClient::Object::StoreListRequest->new(); # StoreListRequest | The store list request object

eval { 
    my $result = $api_instance->get_using_get2(store_list_request => $store_list_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_using_get2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_list_request** | [**StoreListRequest**](StoreListRequest.md)| The store list request object | [optional] 

### Return type

[**PageStoreItem**](PageStoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_template_using_put**
> update_item_template_using_put(id => $id, item_template_resource => $item_template_resource)

Update an item template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $id = 'id_example'; # string | The id of the template
my $item_template_resource = WWW::SwaggerClient::Object::StoreItemTemplateResource->new(); # StoreItemTemplateResource | The item template resource object

eval { 
    $api_instance->update_item_template_using_put(id => $id, item_template_resource => $item_template_resource);
};
if ($@) {
    warn "Exception when calling StoreApi->update_item_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **item_template_resource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The item template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_store_item_external_using_put**
> update_store_item_external_using_put(id => $id, store_item => $store_item)

Update a store item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreApi->new();
my $id = 56; # int | The id of the item
my $store_item = WWW::SwaggerClient::Object::StoreItem->new(); # StoreItem | The store item object

eval { 
    $api_instance->update_store_item_external_using_put(id => $id, store_item => $store_item);
};
if ($@) {
    warn "Exception when calling StoreApi->update_store_item_external_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 
 **store_item** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

