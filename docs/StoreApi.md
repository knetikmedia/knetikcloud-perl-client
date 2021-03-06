# KnetikCloud::StoreApi

## Load the API package
```perl
use KnetikCloud::Object::StoreApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_item_template**](StoreApi.md#create_item_template) | **POST** /store/items/templates | Create an item template
[**create_store_item**](StoreApi.md#create_store_item) | **POST** /store/items | Create a store item
[**delete_item_template**](StoreApi.md#delete_item_template) | **DELETE** /store/items/templates/{id} | Delete an item template
[**delete_store_item**](StoreApi.md#delete_store_item) | **DELETE** /store/items/{id} | Delete a store item
[**get_behaviors**](StoreApi.md#get_behaviors) | **GET** /store/items/behaviors | List available item behaviors
[**get_item_template**](StoreApi.md#get_item_template) | **GET** /store/items/templates/{id} | Get a single item template
[**get_item_templates**](StoreApi.md#get_item_templates) | **GET** /store/items/templates | List and search item templates
[**get_store**](StoreApi.md#get_store) | **GET** /store | Get a listing of store items
[**get_store_item**](StoreApi.md#get_store_item) | **GET** /store/items/{id} | Get a single store item
[**get_store_items**](StoreApi.md#get_store_items) | **GET** /store/items | List and search store items
[**quick_buy**](StoreApi.md#quick_buy) | **POST** /store/quick-buy | One-step purchase and pay for a single SKU item from a user&#39;s wallet
[**update_item_template**](StoreApi.md#update_item_template) | **PUT** /store/items/templates/{id} | Update an item template
[**update_store_item**](StoreApi.md#update_store_item) | **PUT** /store/items/{id} | Update a store item


# **create_item_template**
> StoreItemTemplateResource create_item_template(item_template_resource => $item_template_resource)

Create an item template

Item Templates define a type of item and the properties they have.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $item_template_resource = KnetikCloud::Object::StoreItemTemplateResource->new(); # StoreItemTemplateResource | The new item template

eval { 
    my $result = $api_instance->create_item_template(item_template_resource => $item_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->create_item_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_template_resource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The new item template | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_store_item**
> StoreItem create_store_item(cascade => $cascade, store_item => $store_item)

Create a store item

SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $cascade = 1; # boolean | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
my $store_item = KnetikCloud::Object::StoreItem->new(); # StoreItem | The store item object

eval { 
    my $result = $api_instance->create_store_item(cascade => $cascade, store_item => $store_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->create_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **boolean**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **store_item** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_item_template**
> delete_item_template(id => $id, cascade => $cascade)

Delete an item template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_item_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreApi->delete_item_template: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_store_item**
> delete_store_item(id => $id)

Delete a store item

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the item

eval { 
    $api_instance->delete_store_item(id => $id);
};
if ($@) {
    warn "Exception when calling StoreApi->delete_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_behaviors**
> ARRAY[BehaviorDefinitionResource] get_behaviors()

List available item behaviors

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);


eval { 
    my $result = $api_instance->get_behaviors();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_behaviors: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BehaviorDefinitionResource]**](BehaviorDefinitionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_template**
> StoreItemTemplateResource get_item_template(id => $id)

Get a single item template

Item Templates define a type of item and the properties they have.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_item_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_item_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_templates**
> PageResourceStoreItemTemplateResource get_item_templates(size => $size, page => $page, order => $order)

List and search item templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_item_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_item_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceStoreItemTemplateResource**](PageResourceStoreItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store**
> PageResourceStoreItem get_store(limit => $limit, page => $page, use_catalog => $use_catalog, ignore_location => $ignore_location, in_stock_only => $in_stock_only)

Get a listing of store items

The exact structure of each items may differ to include fields specific to the type. The same is true for behaviors.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(
);

my $limit = 56; # int | The amount of items returned
my $page = 56; # int | The page of the request
my $use_catalog = 1; # boolean | Whether to remove items that are not intended for display or not in date
my $ignore_location = 1; # boolean | Whether to ignore country restrictions based on the caller's location
my $in_stock_only = 1; # boolean | Whether only in-stock items should be returned.  Default value is false

eval { 
    my $result = $api_instance->get_store(limit => $limit, page => $page, use_catalog => $use_catalog, ignore_location => $ignore_location, in_stock_only => $in_stock_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_store: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The amount of items returned | [optional] 
 **page** | **int**| The page of the request | [optional] 
 **use_catalog** | **boolean**| Whether to remove items that are not intended for display or not in date | [optional] 
 **ignore_location** | **boolean**| Whether to ignore country restrictions based on the caller&#39;s location | [optional] 
 **in_stock_only** | **boolean**| Whether only in-stock items should be returned.  Default value is false | [optional] [default to false]

### Return type

[**PageResourceStoreItem**](PageResourceStoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store_item**
> StoreItem get_store_item(id => $id)

Get a single store item

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(
);

my $id = 56; # int | The id of the item

eval { 
    my $result = $api_instance->get_store_item(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_store_item: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_store_items**
> PageResourceStoreItem get_store_items(filter_name_search => $filter_name_search, filter_unique_key => $filter_unique_key, filter_published => $filter_published, filter_displayable => $filter_displayable, filter_start => $filter_start, filter_end => $filter_end, filter_start_date => $filter_start_date, filter_stop_date => $filter_stop_date, filter_sku => $filter_sku, filter_price => $filter_price, filter_tag => $filter_tag, filter_items_by_type => $filter_items_by_type, filter_bundled_skus => $filter_bundled_skus, filter_vendor => $filter_vendor, size => $size, page => $page, order => $order)

List and search store items

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(
);

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
my $filter_vendor = 56; # int | Filter for items from a given vendor, by id.
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_store_items(filter_name_search => $filter_name_search, filter_unique_key => $filter_unique_key, filter_published => $filter_published, filter_displayable => $filter_displayable, filter_start => $filter_start, filter_end => $filter_end, filter_start_date => $filter_start_date, filter_stop_date => $filter_stop_date, filter_sku => $filter_sku, filter_price => $filter_price, filter_tag => $filter_tag, filter_items_by_type => $filter_items_by_type, filter_bundled_skus => $filter_bundled_skus, filter_vendor => $filter_vendor, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->get_store_items: $@\n";
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
 **filter_vendor** | **int**| Filter for items from a given vendor, by id. | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceStoreItem**](PageResourceStoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quick_buy**
> InvoiceResource quick_buy(quick_buy_request => $quick_buy_request)

One-step purchase and pay for a single SKU item from a user's wallet

Used to create and automatically pay an invoice for a single unit of a single SKU from a user's wallet. SKU must be priced in virtual currency and must not be an item that requires shipping. PAYMENTS_ADMIN permission is required if user ID is specified and is not the ID of the currently logged in user. If invoice price does not match expected price, purchase is aborted

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $quick_buy_request = KnetikCloud::Object::QuickBuyRequest->new(); # QuickBuyRequest | Quick buy details

eval { 
    my $result = $api_instance->quick_buy(quick_buy_request => $quick_buy_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->quick_buy: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quick_buy_request** | [**QuickBuyRequest**](QuickBuyRequest.md)| Quick buy details | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_template**
> StoreItemTemplateResource update_item_template(id => $id, item_template_resource => $item_template_resource)

Update an item template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $item_template_resource = KnetikCloud::Object::StoreItemTemplateResource->new(); # StoreItemTemplateResource | The item template resource object

eval { 
    my $result = $api_instance->update_item_template(id => $id, item_template_resource => $item_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->update_item_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **item_template_resource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The item template resource object | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_store_item**
> StoreItem update_store_item(id => $id, cascade => $cascade, store_item => $store_item)

Update a store item

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreApi;
my $api_instance = KnetikCloud::StoreApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the item
my $cascade = 1; # boolean | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
my $store_item = KnetikCloud::Object::StoreItem->new(); # StoreItem | The store item object

eval { 
    my $result = $api_instance->update_store_item(id => $id, cascade => $cascade, store_item => $store_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreApi->update_store_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the item | 
 **cascade** | **boolean**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **store_item** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

