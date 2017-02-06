# WWW::SwaggerClient::AuthPermissionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthPermissionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_permission**](AuthPermissionsApi.md#create_permission) | **POST** /auth/permissions | Create a new permission
[**delete_permission**](AuthPermissionsApi.md#delete_permission) | **DELETE** /auth/permissions/{permission} | Delete a permission
[**get_permission**](AuthPermissionsApi.md#get_permission) | **GET** /auth/permissions/{permission} | Get a single permission
[**get_permissions**](AuthPermissionsApi.md#get_permissions) | **GET** /auth/permissions | List and search permissions
[**update_permission**](AuthPermissionsApi.md#update_permission) | **PUT** /auth/permissions/{permission} | Update a permission


# **create_permission**
> PermissionResource create_permission(permission_resource => $permission_resource)

Create a new permission

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthPermissionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthPermissionsApi->new();
my $permission_resource = WWW::SwaggerClient::Object::PermissionResource->new(); # PermissionResource | The permission resource object

eval { 
    my $result = $api_instance->create_permission(permission_resource => $permission_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthPermissionsApi->create_permission: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_resource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_permission**
> delete_permission(permission => $permission, force => $force)

Delete a permission

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthPermissionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthPermissionsApi->new();
my $permission = 'permission_example'; # string | The permission value
my $force = 1; # boolean | If true, removes permission assigned to roles

eval { 
    $api_instance->delete_permission(permission => $permission, force => $force);
};
if ($@) {
    warn "Exception when calling AuthPermissionsApi->delete_permission: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **string**| The permission value | 
 **force** | **boolean**| If true, removes permission assigned to roles | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_permission**
> PermissionResource get_permission(permission => $permission)

Get a single permission

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthPermissionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthPermissionsApi->new();
my $permission = 'permission_example'; # string | The permission value

eval { 
    my $result = $api_instance->get_permission(permission => $permission);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthPermissionsApi->get_permission: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **string**| The permission value | 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_permissions**
> PageResourcePermissionResource get_permissions(size => $size, page => $page, order => $order)

List and search permissions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthPermissionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthPermissionsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_permissions(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthPermissionsApi->get_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to permission:ASC]

### Return type

[**PageResourcePermissionResource**](PageResourcePermissionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_permission**
> update_permission(permission => $permission, permission_resource => $permission_resource)

Update a permission

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthPermissionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthPermissionsApi->new();
my $permission = 'permission_example'; # string | The permission value
my $permission_resource = WWW::SwaggerClient::Object::PermissionResource->new(); # PermissionResource | The permission resource object

eval { 
    $api_instance->update_permission(permission => $permission, permission_resource => $permission_resource);
};
if ($@) {
    warn "Exception when calling AuthPermissionsApi->update_permission: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **string**| The permission value | 
 **permission_resource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

