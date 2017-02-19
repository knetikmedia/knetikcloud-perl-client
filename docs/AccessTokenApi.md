# WWW::SwaggerClient::AccessTokenApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AccessTokenApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_o_auth_token**](AccessTokenApi.md#get_o_auth_token) | **POST** /oauth/token | Get access token


# **get_o_auth_token**
> OAuth2Resource get_o_auth_token(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret, username => $username, password => $password)

Get access token

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AccessTokenApi;

my $api_instance = WWW::SwaggerClient::AccessTokenApi->new();
my $grant_type = 'grant_type_example'; # string | Grant type
my $client_id = 'client_id_example'; # string | The id of the client
my $client_secret = 'client_secret_example'; # string | The secret key of the client.  Used only with a grant_type of client_credentials
my $username = 'username_example'; # string | The username of the client.  Used only with a grant_type of password
my $password = 'password_example'; # string | The password of the client.  Used only with a grant_type of password

eval { 
    my $result = $api_instance->get_o_auth_token(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret, username => $username, password => $password);
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
 **username** | **string**| The username of the client.  Used only with a grant_type of password | [optional] 
 **password** | **string**| The password of the client.  Used only with a grant_type of password | [optional] 

### Return type

[**OAuth2Resource**](OAuth2Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

