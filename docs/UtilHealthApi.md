# WWW::SwaggerClient::UtilHealthApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilHealthApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_health_info_using_get**](UtilHealthApi.md#get_health_info_using_get) | **GET** /health | Get health info


# **get_health_info_using_get**
> object get_health_info_using_get()

Get health info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilHealthApi;

my $api_instance = WWW::SwaggerClient::UtilHealthApi->new();

eval { 
    my $result = $api_instance->get_health_info_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilHealthApi->get_health_info_using_get: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

