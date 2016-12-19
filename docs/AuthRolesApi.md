# WWW::SwaggerClient::AuthRolesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthRolesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_client_roles_using_put**](AuthRolesApi.md#assign_client_roles_using_put) | **PUT** /auth/clients/{client_key}/roles | Set roles for a client
[**assign_permissions_using_put**](AuthRolesApi.md#assign_permissions_using_put) | **PUT** /auth/roles/{role}/permissions | Set permissions for a role
[**assign_user_roles_external_using_put**](AuthRolesApi.md#assign_user_roles_external_using_put) | **PUT** /auth/users/{user_id}/roles | Set roles for a user
[**create_role_using_post**](AuthRolesApi.md#create_role_using_post) | **POST** /auth/roles | Create a new role
[**delete_role_using_delete**](AuthRolesApi.md#delete_role_using_delete) | **DELETE** /auth/roles/{role} | Delete a role
[**get_client_roles_using_get**](AuthRolesApi.md#get_client_roles_using_get) | **GET** /auth/clients/{client_key}/roles | Get roles for a client
[**get_role_using_get**](AuthRolesApi.md#get_role_using_get) | **GET** /auth/roles/{role} | Get a single role
[**get_roles_using_get**](AuthRolesApi.md#get_roles_using_get) | **GET** /auth/roles | List and search roles
[**get_user_roles_using_get**](AuthRolesApi.md#get_user_roles_using_get) | **GET** /auth/users/{user_id}/roles | Get roles for a user
[**update_role_using_put**](AuthRolesApi.md#update_role_using_put) | **PUT** /auth/roles/{role} | Update a role


# **assign_client_roles_using_put**
> assign_client_roles_using_put(client_key => $client_key, roles_list => $roles_list)

Set roles for a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $client_key = 'client_key_example'; # string | The client key
my $roles_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | The list of unique roles

eval { 
    $api_instance->assign_client_roles_using_put(client_key => $client_key, roles_list => $roles_list);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->assign_client_roles_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The client key | 
 **roles_list** | **ARRAY[string]**| The list of unique roles | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assign_permissions_using_put**
> assign_permissions_using_put(role => $role, permissions_list => $permissions_list)

Set permissions for a role

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $role = 'role_example'; # string | The role value
my $permissions_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | The list of unique permissions

eval { 
    $api_instance->assign_permissions_using_put(role => $role, permissions_list => $permissions_list);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->assign_permissions_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **string**| The role value | 
 **permissions_list** | **ARRAY[string]**| The list of unique permissions | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assign_user_roles_external_using_put**
> assign_user_roles_external_using_put(user_id => $user_id, roles_list => $roles_list)

Set roles for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $user_id = 56; # int | The user's id
my $roles_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | The list of unique roles

eval { 
    $api_instance->assign_user_roles_external_using_put(user_id => $user_id, roles_list => $roles_list);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->assign_user_roles_external_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **roles_list** | **ARRAY[string]**| The list of unique roles | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_role_using_post**
> RoleResource create_role_using_post(role_resource => $role_resource)

Create a new role

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $role_resource = WWW::SwaggerClient::Object::RoleResource->new(); # RoleResource | The role resource object

eval { 
    my $result = $api_instance->create_role_using_post(role_resource => $role_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->create_role_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_role_using_delete**
> delete_role_using_delete(role => $role, force => $force)

Delete a role

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $role = 'role_example'; # string | The role value
my $force = 1; # boolean | If true, removes role from users/clients

eval { 
    $api_instance->delete_role_using_delete(role => $role, force => $force);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->delete_role_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **string**| The role value | 
 **force** | **boolean**| If true, removes role from users/clients | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client_roles_using_get**
> ARRAY[RoleResource] get_client_roles_using_get(client_key => $client_key)

Get roles for a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $client_key = 'client_key_example'; # string | The client key

eval { 
    my $result = $api_instance->get_client_roles_using_get(client_key => $client_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_client_roles_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The client key | 

### Return type

[**ARRAY[RoleResource]**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role_using_get**
> RoleResource get_role_using_get(role => $role)

Get a single role

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $role = 'role_example'; # string | The role value

eval { 
    my $result = $api_instance->get_role_using_get(role => $role);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_role_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **string**| The role value | 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_roles_using_get**
> PageRoleResource get_roles_using_get(size => $size, page => $page, order => $order)

List and search roles

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_roles_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_roles_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageRoleResource**](PageRoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_roles_using_get**
> ARRAY[RoleResource] get_user_roles_using_get(user_id => $user_id)

Get roles for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $user_id = 56; # int | The user's id

eval { 
    my $result = $api_instance->get_user_roles_using_get(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_user_roles_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 

### Return type

[**ARRAY[RoleResource]**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_role_using_put**
> update_role_using_put(role => $role, role_resource => $role_resource)

Update a role

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthRolesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthRolesApi->new();
my $role = 'role_example'; # string | The role value
my $role_resource = WWW::SwaggerClient::Object::RoleResource->new(); # RoleResource | The role resource object

eval { 
    $api_instance->update_role_using_put(role => $role, role_resource => $role_resource);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->update_role_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **string**| The role value | 
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

