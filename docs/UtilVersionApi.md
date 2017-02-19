# WWW::SwaggerClient::UtilVersionApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilVersionApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version**](UtilVersionApi.md#get_version) | **GET** /version | Get current version info


# **get_version**
> Version get_version()

Get current version info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilVersionApi;

my $api_instance = WWW::SwaggerClient::UtilVersionApi->new();

eval { 
    my $result = $api_instance->get_version();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilVersionApi->get_version: $@\n";
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
