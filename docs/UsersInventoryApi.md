# WWW::SwaggerClient::UsersInventoryApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersInventoryApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_item_using_post1**](UsersInventoryApi.md#add_item_using_post1) | **POST** /users/{id}/inventory | Adds an item to the user inventory
[**create_item_using_post**](UsersInventoryApi.md#create_item_using_post) | **POST** /entitlements | Create an entitlement item
[**create_template_using_post3**](UsersInventoryApi.md#create_template_using_post3) | **POST** /entitlements/templates | Create an entitlement template
[**delete_entitlement_template_using_delete**](UsersInventoryApi.md#delete_entitlement_template_using_delete) | **DELETE** /entitlements/templates/{id} | Delete an entitlement template
[**delete_item_using_delete**](UsersInventoryApi.md#delete_item_using_delete) | **DELETE** /entitlements/{entitlement_id} | Delete an entitlement item
[**entitlement_check_using_get**](UsersInventoryApi.md#entitlement_check_using_get) | **GET** /users/{user_id}/entitlements/{item_id}/check | Check for access to an item without consuming
[**entitlement_use_using_post**](UsersInventoryApi.md#entitlement_use_using_post) | **POST** /users/{user_id}/entitlements/{item_id}/use | Use an item
[**get_currencies_using_get1**](UsersInventoryApi.md#get_currencies_using_get1) | **GET** /entitlements | List and search entitlement items
[**get_entitlement_template_using_get**](UsersInventoryApi.md#get_entitlement_template_using_get) | **GET** /entitlements/templates/{id} | Get a single entitlement template
[**get_entitlement_templates_using_get**](UsersInventoryApi.md#get_entitlement_templates_using_get) | **GET** /entitlements/templates | List and search entitlement templates
[**get_inventory_list_using_get**](UsersInventoryApi.md#get_inventory_list_using_get) | **GET** /inventories | List the user inventory entries for all users
[**get_inventory_using_get**](UsersInventoryApi.md#get_inventory_using_get) | **GET** /users/{user_id}/inventory/{id} | Get an inventory entry
[**get_item_using_get**](UsersInventoryApi.md#get_item_using_get) | **GET** /entitlements/{entitlement_id} | Get a single entitlement item
[**get_user_inventory_list_using_get**](UsersInventoryApi.md#get_user_inventory_list_using_get) | **GET** /users/{id}/inventory | List the user inventory entries for a given user
[**get_user_inventory_log_using_get**](UsersInventoryApi.md#get_user_inventory_log_using_get) | **GET** /users/{user_id}/inventory/{id}/log | List the log entries for this inventory entry.
[**update_item_using_put1**](UsersInventoryApi.md#update_item_using_put1) | **PUT** /entitlements/{entitlement_id} | Update an entitlement item
[**update_template_using_put3**](UsersInventoryApi.md#update_template_using_put3) | **PUT** /entitlements/templates/{id} | Update an entitlement template
[**update_user_inventory_behavior_data_using_put**](UsersInventoryApi.md#update_user_inventory_behavior_data_using_put) | **PUT** /users/{user_id}/inventory/{id}/behavior-data | Set the behavior data for an inventory entry
[**update_user_inventory_expires_using_put**](UsersInventoryApi.md#update_user_inventory_expires_using_put) | **PUT** /users/{user_id}/inventory/{id}/expires | Set the expiration date
[**update_user_inventory_status_using_put**](UsersInventoryApi.md#update_user_inventory_status_using_put) | **PUT** /users/{user_id}/inventory/{id}/status | Set the status for an inventory entry


# **add_item_using_post1**
> InvoiceResource add_item_using_post1(id => $id, user_inventory_add_request => $user_inventory_add_request)

Adds an item to the user inventory

The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $id = 56; # int | The id of the user
my $user_inventory_add_request = WWW::SwaggerClient::Object::UserInventoryAddRequest->new(); # UserInventoryAddRequest | The user inventory add request object

eval { 
    my $result = $api_instance->add_item_using_post1(id => $id, user_inventory_add_request => $user_inventory_add_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->add_item_using_post1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **user_inventory_add_request** | [**UserInventoryAddRequest**](UserInventoryAddRequest.md)| The user inventory add request object | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_item_using_post**
> EntitlementItem create_item_using_post(entitlement_item => $entitlement_item)

Create an entitlement item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $entitlement_item = WWW::SwaggerClient::Object::EntitlementItem->new(); # EntitlementItem | The entitlement item object

eval { 
    my $result = $api_instance->create_item_using_post(entitlement_item => $entitlement_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->create_item_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_item** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_template_using_post3**
> ItemTemplateResource create_template_using_post3(template => $template)

Create an entitlement template

Entitlement templates define a type of entitlement and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $template = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The entitlement template to be created

eval { 
    my $result = $api_instance->create_template_using_post3(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->create_template_using_post3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The entitlement template to be created | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_entitlement_template_using_delete**
> delete_entitlement_template_using_delete(id => $id, cascade => $cascade)

Delete an entitlement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_entitlement_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->delete_entitlement_template_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_item_using_delete**
> delete_item_using_delete(entitlement_id => $entitlement_id)

Delete an entitlement item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $entitlement_id = 56; # int | The id of the entitlement

eval { 
    $api_instance->delete_item_using_delete(entitlement_id => $entitlement_id);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->delete_item_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **int**| The id of the entitlement | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **entitlement_check_using_get**
> entitlement_check_using_get(user_id => $user_id, item_id => $item_id, sku => $sku)

Check for access to an item without consuming

Useful for pre-check and accounts for all various buisness rules

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 'user_id_example'; # string | The id of the user to check for or 'me' for logged in user
my $item_id = 56; # int | The id of the item
my $sku = 'sku_example'; # string | The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out

eval { 
    $api_instance->entitlement_check_using_get(user_id => $user_id, item_id => $item_id, sku => $sku);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->entitlement_check_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user to check for or &#39;me&#39; for logged in user | 
 **item_id** | **int**| The id of the item | 
 **sku** | **string**| The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **entitlement_use_using_post**
> entitlement_use_using_post(user_id => $user_id, item_id => $item_id, sku => $sku, info => $info)

Use an item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 'user_id_example'; # string | The id of the user to check for or 'me' for logged in user
my $item_id = 56; # int | The id of the item
my $sku = 'sku_example'; # string | The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out
my $info = 'info_example'; # string | Any additional info to add to the log about this use

eval { 
    $api_instance->entitlement_use_using_post(user_id => $user_id, item_id => $item_id, sku => $sku, info => $info);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->entitlement_use_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user to check for or &#39;me&#39; for logged in user | 
 **item_id** | **int**| The id of the item | 
 **sku** | **string**| The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out | [optional] 
 **info** | **string**| Any additional info to add to the log about this use | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_currencies_using_get1**
> PageEntitlementItem get_currencies_using_get1(size => $size, page => $page, order => $order)

List and search entitlement items

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_currencies_using_get1(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_currencies_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageEntitlementItem**](PageEntitlementItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entitlement_template_using_get**
> ItemTemplateResource get_entitlement_template_using_get(id => $id)

Get a single entitlement template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_entitlement_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_entitlement_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entitlement_templates_using_get**
> PageItemTemplateResource get_entitlement_templates_using_get(size => $size, page => $page, order => $order)

List and search entitlement templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_entitlement_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_entitlement_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageItemTemplateResource**](PageItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_inventory_list_using_get**
> PageUserInventoryResource get_inventory_list_using_get(inactive => $inactive, size => $size, page => $page, filter_item_name => $filter_item_name, filter_username => $filter_username, filter_group => $filter_group, filter_date => $filter_date)

List the user inventory entries for all users

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $inactive = 1; # boolean | If true, accepts inactive user inventories
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $filter_item_name = 'filter_item_name_example'; # string | Filter by items whose name starts with a string
my $filter_username = 'filter_username_example'; # string | Filter by entries owned by the user with the specified username
my $filter_group = 'filter_group_example'; # string | Filter by entries owned by the users in a given group, by unique name
my $filter_date = 'filter_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).

eval { 
    my $result = $api_instance->get_inventory_list_using_get(inactive => $inactive, size => $size, page => $page, filter_item_name => $filter_item_name, filter_username => $filter_username, filter_group => $filter_group, filter_date => $filter_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_inventory_list_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inactive** | **boolean**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filter_item_name** | **string**| Filter by items whose name starts with a string | [optional] 
 **filter_username** | **string**| Filter by entries owned by the user with the specified username | [optional] 
 **filter_group** | **string**| Filter by entries owned by the users in a given group, by unique name | [optional] 
 **filter_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 

### Return type

[**PageUserInventoryResource**](PageUserInventoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_inventory_using_get**
> UserInventoryResource get_inventory_using_get(user_id => $user_id, id => $id)

Get an inventory entry

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 56; # int | The id of the inventory owner or 'me' for the logged in user
my $id = 56; # int | The id of the user inventory

eval { 
    my $result = $api_instance->get_inventory_using_get(user_id => $user_id, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_inventory_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **int**| The id of the user inventory | 

### Return type

[**UserInventoryResource**](UserInventoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_using_get**
> EntitlementItem get_item_using_get(entitlement_id => $entitlement_id)

Get a single entitlement item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $entitlement_id = 56; # int | The id of the entitlement

eval { 
    my $result = $api_instance->get_item_using_get(entitlement_id => $entitlement_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_item_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **int**| The id of the entitlement | 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_inventory_list_using_get**
> PageUserInventoryResource get_user_inventory_list_using_get(id => $id, inactive => $inactive, size => $size, page => $page, filter_item_name => $filter_item_name, filter_min_date => $filter_min_date, filter_max_date => $filter_max_date)

List the user inventory entries for a given user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $id = 56; # int | The id of the user
my $inactive = 1; # boolean | If true, accepts inactive user inventories
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $filter_item_name = 'filter_item_name_example'; # string | Filter by items whose name starts with a string
my $filter_min_date = 789; # int | Filter for inventory added after the specified date, unix timestamp in seconds
my $filter_max_date = 789; # int | Filter for inventory added before the specified date, unix timestamp in seconds

eval { 
    my $result = $api_instance->get_user_inventory_list_using_get(id => $id, inactive => $inactive, size => $size, page => $page, filter_item_name => $filter_item_name, filter_min_date => $filter_min_date, filter_max_date => $filter_max_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_user_inventory_list_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **inactive** | **boolean**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filter_item_name** | **string**| Filter by items whose name starts with a string | [optional] 
 **filter_min_date** | **int**| Filter for inventory added after the specified date, unix timestamp in seconds | [optional] 
 **filter_max_date** | **int**| Filter for inventory added before the specified date, unix timestamp in seconds | [optional] 

### Return type

[**PageUserInventoryResource**](PageUserInventoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_inventory_log_using_get**
> PageUserItemLogResource get_user_inventory_log_using_get(user_id => $user_id, id => $id, size => $size, page => $page)

List the log entries for this inventory entry.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 'user_id_example'; # string | The id of the inventory owner or 'me' for the logged in user
my $id = 56; # int | The id of the user inventory
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_inventory_log_using_get(user_id => $user_id, id => $id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->get_user_inventory_log_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **int**| The id of the user inventory | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageUserItemLogResource**](PageUserItemLogResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_using_put1**
> update_item_using_put1(entitlement_id => $entitlement_id, entitlement_item => $entitlement_item)

Update an entitlement item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $entitlement_id = 56; # int | The id of the entitlement
my $entitlement_item = WWW::SwaggerClient::Object::EntitlementItem->new(); # EntitlementItem | The entitlement item object

eval { 
    $api_instance->update_item_using_put1(entitlement_id => $entitlement_id, entitlement_item => $entitlement_item);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->update_item_using_put1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **int**| The id of the entitlement | 
 **entitlement_item** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_template_using_put3**
> update_template_using_put3(id => $id, template => $template)

Update an entitlement template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $id = 'id_example'; # string | The id of the template
my $template = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The updated template

eval { 
    $api_instance->update_template_using_put3(id => $id, template => $template);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->update_template_using_put3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The updated template | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_inventory_behavior_data_using_put**
> update_user_inventory_behavior_data_using_put(user_id => $user_id, id => $id, data => $data)

Set the behavior data for an inventory entry

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 56; # int | The id of the user
my $id = 56; # int | The id of the user inventory
my $data = WWW::SwaggerClient::Object::object->new(); # object | The data map

eval { 
    $api_instance->update_user_inventory_behavior_data_using_put(user_id => $user_id, id => $id, data => $data);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->update_user_inventory_behavior_data_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **id** | **int**| The id of the user inventory | 
 **data** | **object**| The data map | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_inventory_expires_using_put**
> update_user_inventory_expires_using_put(user_id => $user_id, id => $id, timestamp => $timestamp)

Set the expiration date

Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill)

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 56; # int | user_id
my $id = 56; # int | The id of the user inventory
my $timestamp = WWW::SwaggerClient::Object::int->new(); # int | The new expiration date as a unix timestamp in seconds. May be null (no body).

eval { 
    $api_instance->update_user_inventory_expires_using_put(user_id => $user_id, id => $id, timestamp => $timestamp);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->update_user_inventory_expires_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| user_id | 
 **id** | **int**| The id of the user inventory | 
 **timestamp** | **int**| The new expiration date as a unix timestamp in seconds. May be null (no body). | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_inventory_status_using_put**
> update_user_inventory_status_using_put(user_id => $user_id, id => $id, inventory_status => $inventory_status)

Set the status for an inventory entry

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersInventoryApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersInventoryApi->new();
my $user_id = 56; # int | The id of the user
my $id = 56; # int | The id of the user inventory
my $inventory_status = WWW::SwaggerClient::Object::string->new(); # string | The inventory status object

eval { 
    $api_instance->update_user_inventory_status_using_put(user_id => $user_id, id => $id, inventory_status => $inventory_status);
};
if ($@) {
    warn "Exception when calling UsersInventoryApi->update_user_inventory_status_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **id** | **int**| The id of the user inventory | 
 **inventory_status** | **string**| The inventory status object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

