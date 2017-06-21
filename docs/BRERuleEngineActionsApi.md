# KnetikCloud::BRERuleEngineActionsApi

## Load the API package
```perl
use KnetikCloud::Object::BRERuleEngineActionsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_actions**](BRERuleEngineActionsApi.md#get_bre_actions) | **GET** /bre/actions | Get a list of available actions


# **get_bre_actions**
> ARRAY[ActionResource] get_bre_actions(filter_category => $filter_category, filter_name => $filter_name, filter_tags => $filter_tags, filter_search => $filter_search)

Get a list of available actions

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::BRERuleEngineActionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::BRERuleEngineActionsApi->new();
my $filter_category = 'filter_category_example'; # string | Filter for actions that are within a specific category
my $filter_name = 'filter_name_example'; # string | Filter for actions that have names containing the given string
my $filter_tags = 'filter_tags_example'; # string | Filter for actions that have all of the given tags (comma separated list)
my $filter_search = 'filter_search_example'; # string | Filter for actions containing the given words somewhere within name, description and tags

eval { 
    my $result = $api_instance->get_bre_actions(filter_category => $filter_category, filter_name => $filter_name, filter_tags => $filter_tags, filter_search => $filter_search);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineActionsApi->get_bre_actions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **string**| Filter for actions that are within a specific category | [optional] 
 **filter_name** | **string**| Filter for actions that have names containing the given string | [optional] 
 **filter_tags** | **string**| Filter for actions that have all of the given tags (comma separated list) | [optional] 
 **filter_search** | **string**| Filter for actions containing the given words somewhere within name, description and tags | [optional] 

### Return type

[**ARRAY[ActionResource]**](ActionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

