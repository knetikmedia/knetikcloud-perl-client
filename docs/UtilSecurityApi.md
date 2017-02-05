# WWW::SwaggerClient::UtilSecurityApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilSecurityApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_location_log_using_get**](UtilSecurityApi.md#get_user_location_log_using_get) | **GET** /security/country-log | Returns the authentication log for a user
[**user_using_get**](UtilSecurityApi.md#user_using_get) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **get_user_location_log_using_get**
> PageResourceLocationLogResource get_user_location_log_using_get(user_id => $user_id)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilSecurityApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilSecurityApi->new();
my $user_id = 56; # int | The user id

eval { 
    my $result = $api_instance->get_user_location_log_using_get(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilSecurityApi->get_user_location_log_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user id | [optional] 

### Return type

[**PageResourceLocationLogResource**](PageResourceLocationLogResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_using_get**
> TokenDetailsResource user_using_get()

Returns the authentication token details. Use /users endpoint for detailed user's info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilSecurityApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilSecurityApi->new();

eval { 
    my $result = $api_instance->user_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilSecurityApi->user_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

