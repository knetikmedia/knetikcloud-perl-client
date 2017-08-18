# KnetikCloud::AuthTokensApi

## Load the API package
```perl
use KnetikCloud::Object::AuthTokensApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_tokens**](AuthTokensApi.md#delete_tokens) | **DELETE** /auth/tokens | Delete tokens by username, client id, or both
[**get_token**](AuthTokensApi.md#get_token) | **GET** /auth/tokens/{username}/{client_id} | Get a single token by username and client id
[**get_tokens**](AuthTokensApi.md#get_tokens) | **GET** /auth/tokens | List usernames and client ids


# **delete_tokens**
> delete_tokens(username => $username, client_id => $client_id)

Delete tokens by username, client id, or both

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AuthTokensApi;
my $api_instance = KnetikCloud::AuthTokensApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $username = 'username_example'; # string | The username of the user
my $client_id = 'client_id_example'; # string | The id of the client

eval { 
    $api_instance->delete_tokens(username => $username, client_id => $client_id);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->delete_tokens: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username of the user | [optional] 
 **client_id** | **string**| The id of the client | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token**
> OauthAccessTokenResource get_token(username => $username, client_id => $client_id)

Get a single token by username and client id

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AuthTokensApi;
my $api_instance = KnetikCloud::AuthTokensApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $username = 'username_example'; # string | The username of the user
my $client_id = 'client_id_example'; # string | The id of the client

eval { 
    my $result = $api_instance->get_token(username => $username, client_id => $client_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->get_token: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tokens**
> PageResourceOauthAccessTokenResource get_tokens(filter_client_id => $filter_client_id, filter_username => $filter_username, size => $size, page => $page, order => $order)

List usernames and client ids

Token value not shown

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AuthTokensApi;
my $api_instance = KnetikCloud::AuthTokensApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_client_id = 'filter_client_id_example'; # string | Filters for token whose client id matches provided string
my $filter_username = 'filter_username_example'; # string | Filters for token whose username matches provided string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_tokens(filter_client_id => $filter_client_id, filter_username => $filter_username, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthTokensApi->get_tokens: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_client_id** | **string**| Filters for token whose client id matches provided string | [optional] 
 **filter_username** | **string**| Filters for token whose username matches provided string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceOauthAccessTokenResource**](PageResourceOauthAccessTokenResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

