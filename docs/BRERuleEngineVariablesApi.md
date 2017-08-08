# KnetikCloud::BRERuleEngineVariablesApi

## Load the API package
```perl
use KnetikCloud::Object::BRERuleEngineVariablesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_variable_types**](BRERuleEngineVariablesApi.md#get_bre_variable_types) | **GET** /bre/variable-types | Get a list of variable types available
[**get_bre_variable_values**](BRERuleEngineVariablesApi.md#get_bre_variable_values) | **GET** /bre/variable-types/{name}/values | List valid values for a type


# **get_bre_variable_types**
> ARRAY[VariableTypeResource] get_bre_variable_types()

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineVariablesApi;
my $api_instance = KnetikCloud::BRERuleEngineVariablesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);


eval { 
    my $result = $api_instance->get_bre_variable_types();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineVariablesApi->get_bre_variable_types: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[VariableTypeResource]**](VariableTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_variable_values**
> PageResourceSimpleReferenceResourceobject get_bre_variable_values(name => $name, filter_name => $filter_name, size => $size, page => $page)

List valid values for a type

Used to lookup users to fill in a user constant for example. Only types marked as enumerable are suppoorted here.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineVariablesApi;
my $api_instance = KnetikCloud::BRERuleEngineVariablesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The name of the type
my $filter_name = 'filter_name_example'; # string | Filter results by those with names starting with this string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_bre_variable_values(name => $name, filter_name => $filter_name, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineVariablesApi->get_bre_variable_values: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the type | 
 **filter_name** | **string**| Filter results by those with names starting with this string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceSimpleReferenceResourceobject**](PageResourceSimpleReferenceResourceobject.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

