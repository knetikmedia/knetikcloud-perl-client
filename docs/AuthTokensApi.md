# WWW::SwaggerClient::AuthTokensApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthTokensApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_token_using_delete**](AuthTokensApi.md#delete_token_using_delete) | **DELETE** /auth/tokens/{username} | Delete all tokens by username
[**delete_token_with_client_id_using_delete**](AuthTokensApi.md#delete_token_with_client_id_using_delete) | **DELETE** /auth/tokens/{username}/{client_id} | Delete a token by username and client id
[**get_token_by_user_using_get**](AuthTokensApi.md#get_token_by_user_using_get) | **GET** /auth/tokens/{username}/{client_id} | Get a single token by username and client id
[**get_tokens_using_get**](AuthTokensApi.md#get_tokens_using_get) | **GET** /auth/tokens | List usernames and client ids


# **delete_token_using_delete**
> delete_token_using_delete(username => $username)

Delete all tokens by username

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthTokensApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthTokensApi->new();
my $username = 'username_example'; # string | The username of the user

eval { 
    $api_instance->delete_token_using_delete(username => $username);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->delete_token_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username of the user | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token_with_client_id_using_delete**
> delete_token_with_client_id_using_delete(username => $username, client_id => $client_id)

Delete a token by username and client id

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthTokensApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthTokensApi->new();
my $username = 'username_example'; # string | The username of the user
my $client_id = 'client_id_example'; # string | The id of the client

eval { 
    $api_instance->delete_token_with_client_id_using_delete(username => $username, client_id => $client_id);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->delete_token_with_client_id_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username of the user | 
 **client_id** | **string**| The id of the client | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_by_user_using_get**
> OauthAccessTokenResource get_token_by_user_using_get(username => $username, client_id => $client_id)

Get a single token by username and client id

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthTokensApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthTokensApi->new();
my $username = 'username_example'; # string | The username of the user
my $client_id = 'client_id_example'; # string | The id of the client

eval { 
    my $result = $api_instance->get_token_by_user_using_get(username => $username, client_id => $client_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->get_token_by_user_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username of the user | 
 **client_id** | **string**| The id of the client | 

### Return type

[**OauthAccessTokenResource**](OauthAccessTokenResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tokens_using_get**
> PageResourceOauthAccessTokenResource get_tokens_using_get(filter_client_id => $filter_client_id, filter_username => $filter_username, size => $size, page => $page, order => $order)

List usernames and client ids

Token value not shown

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AuthTokensApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AuthTokensApi->new();
my $filter_client_id = 'filter_client_id_example'; # string | Filters for token whose client id matches provided string
my $filter_username = 'filter_username_example'; # string | Filters for token whose username matches provided string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_tokens_using_get(filter_client_id => $filter_client_id, filter_username => $filter_username, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->get_tokens_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_client_id** | **string**| Filters for token whose client id matches provided string | [optional] 
 **filter_username** | **string**| Filters for token whose username matches provided string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to username:ASC]

### Return type

[**PageResourceOauthAccessTokenResource**](PageResourceOauthAccessTokenResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

