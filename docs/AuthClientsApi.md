# WWW::SwaggerClient::AuthClientsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthClientsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_client**](AuthClientsApi.md#create_client) | **POST** /auth/clients | Create a new client
[**delete_client**](AuthClientsApi.md#delete_client) | **DELETE** /auth/clients/{client_key} | Delete a client
[**get_client**](AuthClientsApi.md#get_client) | **GET** /auth/clients/{client_key} | Get a single client
[**get_client_grant_types**](AuthClientsApi.md#get_client_grant_types) | **GET** /auth/clients/grant-types | List available client grant types
[**get_clients**](AuthClientsApi.md#get_clients) | **GET** /auth/clients | List and search clients
[**set_client_grant_types**](AuthClientsApi.md#set_client_grant_types) | **PUT** /auth/clients/{client_key}/grant-types | Set grant types for a client
[**set_client_redirect_uris**](AuthClientsApi.md#set_client_redirect_uris) | **PUT** /auth/clients/{client_key}/redirect-uris | Set redirect uris for a client
[**update_client**](AuthClientsApi.md#update_client) | **PUT** /auth/clients/{client_key} | Update a client


# **create_client**
> ClientResource create_client(client_resource => $client_resource)

Create a new client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_resource = WWW::SwaggerClient::Object::ClientResource->new(); # ClientResource | The client resource object

eval { 
    my $result = $api_instance->create_client(client_resource => $client_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->create_client: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_client**
> delete_client(client_key => $client_key)

Delete a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client

eval { 
    $api_instance->delete_client(client_key => $client_key);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->delete_client: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client**
> ClientResource get_client(client_key => $client_key)

Get a single client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client

eval { 
    my $result = $api_instance->get_client(client_key => $client_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->get_client: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client_grant_types**
> ARRAY[GrantTypeResource] get_client_grant_types()

List available client grant types

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();

eval { 
    my $result = $api_instance->get_client_grant_types();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->get_client_grant_types: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[GrantTypeResource]**](GrantTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_clients**
> PageResourceClientResource get_clients(size => $size, page => $page, order => $order)

List and search clients

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_clients(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->get_clients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceClientResource**](PageResourceClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_client_grant_types**
> set_client_grant_types(client_key => $client_key, grant_list => $grant_list)

Set grant types for a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client
my $grant_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | A list of unique grant types

eval { 
    $api_instance->set_client_grant_types(client_key => $client_key, grant_list => $grant_list);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->set_client_grant_types: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 
 **grant_list** | **ARRAY[string]**| A list of unique grant types | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_client_redirect_uris**
> set_client_redirect_uris(client_key => $client_key, redirect_list => $redirect_list)

Set redirect uris for a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client
my $redirect_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | A list of unique redirect uris

eval { 
    $api_instance->set_client_redirect_uris(client_key => $client_key, redirect_list => $redirect_list);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->set_client_redirect_uris: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 
 **redirect_list** | **ARRAY[string]**| A list of unique redirect uris | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_client**
> ClientResource update_client(client_key => $client_key, client_resource => $client_resource)

Update a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client
my $client_resource = WWW::SwaggerClient::Object::ClientResource->new(); # ClientResource | The client resource object

eval { 
    my $result = $api_instance->update_client(client_key => $client_key, client_resource => $client_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->update_client: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

