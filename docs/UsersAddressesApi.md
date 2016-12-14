# WWW::SwaggerClient::UsersAddressesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersAddressesApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_address_using_post**](UsersAddressesApi.md#create_address_using_post) | **POST** /users/{user_id}/addresses | Save a new address
[**delete_address_using_delete**](UsersAddressesApi.md#delete_address_using_delete) | **DELETE** /users/{user_id}/addresses/{id} | Delete an address
[**get_address_using_get**](UsersAddressesApi.md#get_address_using_get) | **GET** /users/{user_id}/addresses/{id} | Get a single address
[**get_addresses_using_get**](UsersAddressesApi.md#get_addresses_using_get) | **GET** /users/{user_id}/addresses | List and search addresses
[**update_address_using_put**](UsersAddressesApi.md#update_address_using_put) | **PUT** /users/{user_id}/addresses/{id} | Update an address


# **create_address_using_post**
> SavedAddressResource create_address_using_post(user_id => $user_id, saved_address_resource => $saved_address_resource)

Save a new address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersAddressesApi;

my $api_instance = WWW::SwaggerClient::UsersAddressesApi->new();
my $user_id = 'user_id_example'; # string | The id of the user
my $saved_address_resource = WWW::SwaggerClient::Object::SavedAddressResource->new(); # SavedAddressResource | The new address

eval { 
    my $result = $api_instance->create_address_using_post(user_id => $user_id, saved_address_resource => $saved_address_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersAddressesApi->create_address_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user | 
 **saved_address_resource** | [**SavedAddressResource**](SavedAddressResource.md)| The new address | [optional] 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_address_using_delete**
> delete_address_using_delete(user_id => $user_id, id => $id)

Delete an address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersAddressesApi;

my $api_instance = WWW::SwaggerClient::UsersAddressesApi->new();
my $user_id = 'user_id_example'; # string | The id of the user
my $id = 56; # int | The id of the address

eval { 
    $api_instance->delete_address_using_delete(user_id => $user_id, id => $id);
};
if ($@) {
    warn "Exception when calling UsersAddressesApi->delete_address_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user | 
 **id** | **int**| The id of the address | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_address_using_get**
> SavedAddressResource get_address_using_get(user_id => $user_id, id => $id)

Get a single address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersAddressesApi;

my $api_instance = WWW::SwaggerClient::UsersAddressesApi->new();
my $user_id = 'user_id_example'; # string | The id of the user
my $id = 56; # int | The id of the address

eval { 
    my $result = $api_instance->get_address_using_get(user_id => $user_id, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersAddressesApi->get_address_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user | 
 **id** | **int**| The id of the address | 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_addresses_using_get**
> PageSavedAddressResource get_addresses_using_get(user_id => $user_id, size => $size, page => $page, order => $order)

List and search addresses

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersAddressesApi;

my $api_instance = WWW::SwaggerClient::UsersAddressesApi->new();
my $user_id = 'user_id_example'; # string | The id of the user
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_addresses_using_get(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersAddressesApi->get_addresses_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageSavedAddressResource**](PageSavedAddressResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_address_using_put**
> update_address_using_put(user_id => $user_id, id => $id, saved_address_resource => $saved_address_resource)

Update an address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersAddressesApi;

my $api_instance = WWW::SwaggerClient::UsersAddressesApi->new();
my $user_id = 'user_id_example'; # string | The id of the user
my $id = 56; # int | The id of the address
my $saved_address_resource = WWW::SwaggerClient::Object::SavedAddressResource->new(); # SavedAddressResource | The saved address resource object

eval { 
    $api_instance->update_address_using_put(user_id => $user_id, id => $id, saved_address_resource => $saved_address_resource);
};
if ($@) {
    warn "Exception when calling UsersAddressesApi->update_address_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user | 
 **id** | **int**| The id of the address | 
 **saved_address_resource** | [**SavedAddressResource**](SavedAddressResource.md)| The saved address resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

