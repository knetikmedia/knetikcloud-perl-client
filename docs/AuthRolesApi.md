# WWW::SwaggerClient::AuthRolesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthRolesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_role**](AuthRolesApi.md#create_role) | **POST** /auth/roles | Create a new role
[**delete_role**](AuthRolesApi.md#delete_role) | **DELETE** /auth/roles/{role} | Delete a role
[**get_client_roles**](AuthRolesApi.md#get_client_roles) | **GET** /auth/clients/{client_key}/roles | Get roles for a client
[**get_role**](AuthRolesApi.md#get_role) | **GET** /auth/roles/{role} | Get a single role
[**get_roles**](AuthRolesApi.md#get_roles) | **GET** /auth/roles | List and search roles
[**get_user_roles**](AuthRolesApi.md#get_user_roles) | **GET** /auth/users/{user_id}/roles | Get roles for a user
[**set_client_roles**](AuthRolesApi.md#set_client_roles) | **PUT** /auth/clients/{client_key}/roles | Set roles for a client
[**set_permissions_for_role**](AuthRolesApi.md#set_permissions_for_role) | **PUT** /auth/roles/{role}/permissions | Set permissions for a role
[**set_user_roles**](AuthRolesApi.md#set_user_roles) | **PUT** /auth/users/{user_id}/roles | Set roles for a user
[**update_role**](AuthRolesApi.md#update_role) | **PUT** /auth/roles/{role} | Update a role


# **create_role**
> RoleResource create_role(role_resource => $role_resource)

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
    my $result = $api_instance->create_role(role_resource => $role_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->create_role: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_role**
> delete_role(role => $role, force => $force)

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
    $api_instance->delete_role(role => $role, force => $force);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->delete_role: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client_roles**
> ARRAY[RoleResource] get_client_roles(client_key => $client_key)

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
    my $result = $api_instance->get_client_roles(client_key => $client_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_client_roles: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role**
> RoleResource get_role(role => $role)

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
    my $result = $api_instance->get_role(role => $role);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_role: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_roles**
> PageResourceRoleResource get_roles(size => $size, page => $page, order => $order)

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
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_roles(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceRoleResource**](PageResourceRoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_roles**
> ARRAY[RoleResource] get_user_roles(user_id => $user_id)

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
    my $result = $api_instance->get_user_roles(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->get_user_roles: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_client_roles**
> ClientResource set_client_roles(client_key => $client_key, roles_list => $roles_list)

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
    my $result = $api_instance->set_client_roles(client_key => $client_key, roles_list => $roles_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->set_client_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The client key | 
 **roles_list** | **ARRAY[string]**| The list of unique roles | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_permissions_for_role**
> RoleResource set_permissions_for_role(role => $role, permissions_list => $permissions_list)

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
    my $result = $api_instance->set_permissions_for_role(role => $role, permissions_list => $permissions_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->set_permissions_for_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **string**| The role value | 
 **permissions_list** | **ARRAY[string]**| The list of unique permissions | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_user_roles**
> UserResource set_user_roles(user_id => $user_id, roles_list => $roles_list)

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
    my $result = $api_instance->set_user_roles(user_id => $user_id, roles_list => $roles_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->set_user_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **roles_list** | **ARRAY[string]**| The list of unique roles | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_role**
> RoleResource update_role(role => $role, role_resource => $role_resource)

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
    my $result = $api_instance->update_role(role => $role, role_resource => $role_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthRolesApi->update_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **string**| The role value | 
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

