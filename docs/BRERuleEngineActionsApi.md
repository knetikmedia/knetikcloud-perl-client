# WWW::SwaggerClient::BRERuleEngineActionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineActionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_actions_using_get**](BRERuleEngineActionsApi.md#get_actions_using_get) | **GET** /bre/actions | Get a list of available actions


# **get_actions_using_get**
> ARRAY[ActionResource] get_actions_using_get(filter_category => $filter_category, filter_name => $filter_name)

Get a list of available actions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineActionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineActionsApi->new();
my $filter_category = 'filter_category_example'; # string | Filter for actions that are within a specific category
my $filter_name = 'filter_name_example'; # string | Filter for actions that have names containing the given string

eval { 
    my $result = $api_instance->get_actions_using_get(filter_category => $filter_category, filter_name => $filter_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineActionsApi->get_actions_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **string**| Filter for actions that are within a specific category | [optional] 
 **filter_name** | **string**| Filter for actions that have names containing the given string | [optional] 

### Return type

[**ARRAY[ActionResource]**](ActionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

