# WWW::SwaggerClient::AuthClientsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthClientsApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_client_grant_types_using_put**](AuthClientsApi.md#assign_client_grant_types_using_put) | **PUT** /auth/clients/{client_key}/grant-types | Set grant types for a client
[**assign_client_redirect_uris_using_put**](AuthClientsApi.md#assign_client_redirect_uris_using_put) | **PUT** /auth/clients/{client_key}/redirect-uris | Set redirect uris for a client
[**create_client_using_post**](AuthClientsApi.md#create_client_using_post) | **POST** /auth/clients | Create a new client
[**delete_client_using_delete**](AuthClientsApi.md#delete_client_using_delete) | **DELETE** /auth/clients/{client_key} | Delete a client
[**get_client_using_get**](AuthClientsApi.md#get_client_using_get) | **GET** /auth/clients/{client_key} | Get a single client
[**get_clients_using_get**](AuthClientsApi.md#get_clients_using_get) | **GET** /auth/clients | List and search clients
[**list_available_grant_types_using_get**](AuthClientsApi.md#list_available_grant_types_using_get) | **GET** /auth/clients/grant-types | List available client grant types
[**update_client_using_put**](AuthClientsApi.md#update_client_using_put) | **PUT** /auth/clients/{client_key} | Update a client


# **assign_client_grant_types_using_put**
> assign_client_grant_types_using_put(client_key => $client_key, grant_list => $grant_list)

Set grant types for a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client
my $grant_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | A list of unique grant types

eval { 
    $api_instance->assign_client_grant_types_using_put(client_key => $client_key, grant_list => $grant_list);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->assign_client_grant_types_using_put: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assign_client_redirect_uris_using_put**
> assign_client_redirect_uris_using_put(client_key => $client_key, redirect_list => $redirect_list)

Set redirect uris for a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client
my $redirect_list = [WWW::SwaggerClient::Object::ARRAY[string]->new()]; # ARRAY[string] | A list of unique redirect uris

eval { 
    $api_instance->assign_client_redirect_uris_using_put(client_key => $client_key, redirect_list => $redirect_list);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->assign_client_redirect_uris_using_put: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_client_using_post**
> ClientResource create_client_using_post(client_resource => $client_resource)

Create a new client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_resource = WWW::SwaggerClient::Object::ClientResource->new(); # ClientResource | The client resource object

eval { 
    my $result = $api_instance->create_client_using_post(client_resource => $client_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->create_client_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_client_using_delete**
> delete_client_using_delete(client_key => $client_key)

Delete a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client

eval { 
    $api_instance->delete_client_using_delete(client_key => $client_key);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->delete_client_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client_using_get**
> ClientResource get_client_using_get(client_key => $client_key)

Get a single client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client

eval { 
    my $result = $api_instance->get_client_using_get(client_key => $client_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->get_client_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_clients_using_get**
> PageResourceClientResource get_clients_using_get(size => $size, page => $page, order => $order)

List and search clients

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_clients_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->get_clients_using_get: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_available_grant_types_using_get**
> ARRAY[GrantTypeResource] list_available_grant_types_using_get()

List available client grant types

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();

eval { 
    my $result = $api_instance->list_available_grant_types_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->list_available_grant_types_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[GrantTypeResource]**](GrantTypeResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_client_using_put**
> update_client_using_put(client_key => $client_key, client_resource => $client_resource)

Update a client

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthClientsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthClientsApi->new();
my $client_key = 'client_key_example'; # string | The key of the client
my $client_resource = WWW::SwaggerClient::Object::ClientResource->new(); # ClientResource | The client resource object

eval { 
    $api_instance->update_client_using_put(client_key => $client_key, client_resource => $client_resource);
};
if ($@) {
    warn "Exception when calling AuthClientsApi->update_client_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **string**| The key of the client | 
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

