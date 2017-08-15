# KnetikCloud::AccessTokenApi

## Load the API package
```perl
use KnetikCloud::Object::AccessTokenApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_o_auth_token**](AccessTokenApi.md#get_o_auth_token) | **POST** /oauth/token | Get access token


# **get_o_auth_token**
> OAuth2Resource get_o_auth_token(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret, username => $username, password => $password, token => $token, refresh_token => $refresh_token)

Get access token

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AccessTokenApi;
my $api_instance = KnetikCloud::AccessTokenApi->new(
);

my $grant_type = 'grant_type_example'; # string | Grant type
my $client_id = 'client_id_example'; # string | The id of the client
my $client_secret = 'client_secret_example'; # string | The secret key of the client.  Used only with a grant_type of client_credentials
my $username = 'username_example'; # string | The username of the client. Used only with a grant_type of password
my $password = 'password_example'; # string | The password of the client. Used only with a grant_type of password
my $token = 'token_example'; # string | The 3rd party authentication token. Used only with a grant_type of facebook, google, etc (social plugins)
my $refresh_token = 'refresh_token_example'; # string | The refresh token obtained during prior authentication. Used only with a grant_type of refresh_token

eval { 
    my $result = $api_instance->get_o_auth_token(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret, username => $username, password => $password, token => $token, refresh_token => $refresh_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccessTokenApi->get_o_auth_token: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **string**| Grant type | [default to client_credentials]
 **client_id** | **string**| The id of the client | [default to knetik]
 **client_secret** | **string**| The secret key of the client.  Used only with a grant_type of client_credentials | [optional] 
 **username** | **string**| The username of the client. Used only with a grant_type of password | [optional] 
 **password** | **string**| The password of the client. Used only with a grant_type of password | [optional] 
 **token** | **string**| The 3rd party authentication token. Used only with a grant_type of facebook, google, etc (social plugins) | [optional] 
 **refresh_token** | **string**| The refresh token obtained during prior authentication. Used only with a grant_type of refresh_token | [optional] 

### Return type

[**OAuth2Resource**](OAuth2Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

