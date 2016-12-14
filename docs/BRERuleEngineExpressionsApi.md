# WWW::SwaggerClient::BRERuleEngineExpressionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineExpressionsApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_lookup_types_using_get**](BRERuleEngineExpressionsApi.md#get_lookup_types_using_get) | **GET** /bre/expressions/lookup | Get a list of &#39;lookup&#39; type expressions


# **get_lookup_types_using_get**
> ARRAY[LookupTypeResource] get_lookup_types_using_get()

Get a list of 'lookup' type expressions

These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineExpressionsApi;

my $api_instance = WWW::SwaggerClient::BRERuleEngineExpressionsApi->new();

eval { 
    my $result = $api_instance->get_lookup_types_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineExpressionsApi->get_lookup_types_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[LookupTypeResource]**](LookupTypeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

