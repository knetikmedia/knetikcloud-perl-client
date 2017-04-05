# KnetikCloud::UtilHealthApi

## Load the API package
```perl
use KnetikCloud::Object::UtilHealthApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_health**](UtilHealthApi.md#get_health) | **GET** /health | Get health info


# **get_health**
> object get_health()

Get health info

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UtilHealthApi;

my $api_instance = KnetikCloud::UtilHealthApi->new();

eval { 
    my $result = $api_instance->get_health();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilHealthApi->get_health: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

