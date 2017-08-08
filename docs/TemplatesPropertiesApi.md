# KnetikCloud::TemplatesPropertiesApi

## Load the API package
```perl
use KnetikCloud::Object::TemplatesPropertiesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_template_property_type**](TemplatesPropertiesApi.md#get_template_property_type) | **GET** /templates/properties/{type} | Get details for a template property type
[**get_template_property_types**](TemplatesPropertiesApi.md#get_template_property_types) | **GET** /templates/properties | List template property types


# **get_template_property_type**
> PropertyFieldListResource get_template_property_type(type => $type)

Get details for a template property type

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TemplatesPropertiesApi;
my $api_instance = KnetikCloud::TemplatesPropertiesApi->new(
);

my $type = 'type_example'; # string | type

eval { 
    my $result = $api_instance->get_template_property_type(type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplatesPropertiesApi->get_template_property_type: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| type | 

### Return type

[**PropertyFieldListResource**](PropertyFieldListResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_template_property_types**
> ARRAY[PropertyFieldListResource] get_template_property_types()

List template property types

### Example 
```perl
use Data::Dumper;
use KnetikCloud::TemplatesPropertiesApi;
my $api_instance = KnetikCloud::TemplatesPropertiesApi->new(
);


eval { 
    my $result = $api_instance->get_template_property_types();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplatesPropertiesApi->get_template_property_types: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[PropertyFieldListResource]**](PropertyFieldListResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

