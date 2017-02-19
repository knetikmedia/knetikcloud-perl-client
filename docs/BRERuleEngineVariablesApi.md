# WWW::SwaggerClient::BRERuleEngineVariablesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineVariablesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_variable_types**](BRERuleEngineVariablesApi.md#get_bre_variable_types) | **GET** /bre/variable-types | Get a list of variable types available


# **get_bre_variable_types**
> ARRAY[VariableTypeResource] get_bre_variable_types()

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineVariablesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineVariablesApi->new();

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

