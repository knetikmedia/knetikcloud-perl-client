# KnetikCloud::SocialGoogleApi

## Load the API package
```perl
use KnetikCloud::Object::SocialGoogleApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_accounts1**](SocialGoogleApi.md#link_accounts1) | **POST** /social/google/users | Link google account


# **link_accounts1**
> link_accounts1(google_token => $google_token)

Link google account

Links the current user account to a google account, using the acccess token from google. Can also be used to update the access token after it has expired.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::SocialGoogleApi;
my $api_instance = KnetikCloud::SocialGoogleApi->new(
);

my $google_token = KnetikCloud::Object::GoogleToken->new(); # GoogleToken | The token from google

eval { 
    $api_instance->link_accounts1(google_token => $google_token);
};
if ($@) {
    warn "Exception when calling SocialGoogleApi->link_accounts1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **google_token** | [**GoogleToken**](GoogleToken.md)| The token from google | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

