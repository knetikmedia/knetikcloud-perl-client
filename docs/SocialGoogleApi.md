# KnetikCloud::SocialGoogleApi

## Load the API package
```perl
use KnetikCloud::Object::SocialGoogleApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_accounts1**](SocialGoogleApi.md#link_accounts1) | **POST** /social/google/users | Link facebook account


# **link_accounts1**
> link_accounts1(facebook_token => $facebook_token)

Link facebook account

Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::SocialGoogleApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::SocialGoogleApi->new();
my $facebook_token = KnetikCloud::Object::GoogleToken->new(); # GoogleToken | The token from facebook

eval { 
    $api_instance->link_accounts1(facebook_token => $facebook_token);
};
if ($@) {
    warn "Exception when calling SocialGoogleApi->link_accounts1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facebook_token** | [**GoogleToken**](GoogleToken.md)| The token from facebook | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
