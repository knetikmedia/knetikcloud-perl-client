# KnetikCloud::UtilSecurityApi

## Load the API package
```perl
use KnetikCloud::Object::UtilSecurityApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_location_log**](UtilSecurityApi.md#get_user_location_log) | **GET** /security/country-log | Returns the authentication log for a user
[**get_user_token_details**](UtilSecurityApi.md#get_user_token_details) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **get_user_location_log**
> PageResourceLocationLogResource get_user_location_log(user_id => $user_id, size => $size, page => $page, order => $order)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilSecurityApi;
my $api_instance = KnetikCloud::UtilSecurityApi->new(
);

my $user_id = 56; # int | The user id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_user_location_log(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilSecurityApi->get_user_location_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceLocationLogResource**](PageResourceLocationLogResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_token_details**
> TokenDetailsResource get_user_token_details()

Returns the authentication token details. Use /users endpoint for detailed user's info

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilSecurityApi;
my $api_instance = KnetikCloud::UtilSecurityApi->new(
);


eval { 
    my $result = $api_instance->get_user_token_details();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilSecurityApi->get_user_token_details: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

