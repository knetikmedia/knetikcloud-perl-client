# WWW::SwaggerClient::UtilVersionApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilVersionApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_using_get3**](UtilVersionApi.md#get_using_get3) | **GET** /version | Get current version info


# **get_using_get3**
> Version get_using_get3()

Get current version info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilVersionApi;

my $api_instance = WWW::SwaggerClient::UtilVersionApi->new();

eval { 
    my $result = $api_instance->get_using_get3();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilVersionApi->get_using_get3: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

