# KnetikCloud::BRERuleEngineTriggersApi

## Load the API package
```perl
use KnetikCloud::Object::BRERuleEngineTriggersApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_trigger**](BRERuleEngineTriggersApi.md#create_bre_trigger) | **POST** /bre/triggers | Create a trigger
[**delete_bre_trigger**](BRERuleEngineTriggersApi.md#delete_bre_trigger) | **DELETE** /bre/triggers/{event_name} | Delete a trigger
[**get_bre_trigger**](BRERuleEngineTriggersApi.md#get_bre_trigger) | **GET** /bre/triggers/{event_name} | Get a single trigger
[**get_bre_triggers**](BRERuleEngineTriggersApi.md#get_bre_triggers) | **GET** /bre/triggers | List triggers
[**update_bre_trigger**](BRERuleEngineTriggersApi.md#update_bre_trigger) | **PUT** /bre/triggers/{event_name} | Update a trigger


# **create_bre_trigger**
> BreTriggerResource create_bre_trigger(bre_trigger_resource => $bre_trigger_resource)

Create a trigger

Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineTriggersApi;
my $api_instance = KnetikCloud::BRERuleEngineTriggersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $bre_trigger_resource = KnetikCloud::Object::BreTriggerResource->new(); # BreTriggerResource | The BRE trigger resource object

eval { 
    my $result = $api_instance->create_bre_trigger(bre_trigger_resource => $bre_trigger_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineTriggersApi->create_bre_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_trigger_resource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bre_trigger**
> delete_bre_trigger(event_name => $event_name)

Delete a trigger

May fail if there are existing rules against it. Cannot delete core triggers

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineTriggersApi;
my $api_instance = KnetikCloud::BRERuleEngineTriggersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $event_name = 'event_name_example'; # string | The trigger event name

eval { 
    $api_instance->delete_bre_trigger(event_name => $event_name);
};
if ($@) {
    warn "Exception when calling BRERuleEngineTriggersApi->delete_bre_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **string**| The trigger event name | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_trigger**
> BreTriggerResource get_bre_trigger(event_name => $event_name)

Get a single trigger

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineTriggersApi;
my $api_instance = KnetikCloud::BRERuleEngineTriggersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $event_name = 'event_name_example'; # string | The trigger event name

eval { 
    my $result = $api_instance->get_bre_trigger(event_name => $event_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineTriggersApi->get_bre_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **string**| The trigger event name | 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_triggers**
> PageResourceBreTriggerResource get_bre_triggers(filter_system => $filter_system, filter_category => $filter_category, filter_tags => $filter_tags, filter_name => $filter_name, filter_search => $filter_search, size => $size, page => $page)

List triggers

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineTriggersApi;
my $api_instance = KnetikCloud::BRERuleEngineTriggersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_system = 1; # boolean | Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
my $filter_category = 'filter_category_example'; # string | Filter for triggers that are within a specific category
my $filter_tags = 'filter_tags_example'; # string | Filter for triggers that have all of the given tags (comma separated list)
my $filter_name = 'filter_name_example'; # string | Filter for triggers that have names containing the given string
my $filter_search = 'filter_search_example'; # string | Filter for triggers containing the given words somewhere within name, description and tags
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_bre_triggers(filter_system => $filter_system, filter_category => $filter_category, filter_tags => $filter_tags, filter_name => $filter_name, filter_search => $filter_search, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineTriggersApi->get_bre_triggers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_system** | **boolean**| Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed | [optional] 
 **filter_category** | **string**| Filter for triggers that are within a specific category | [optional] 
 **filter_tags** | **string**| Filter for triggers that have all of the given tags (comma separated list) | [optional] 
 **filter_name** | **string**| Filter for triggers that have names containing the given string | [optional] 
 **filter_search** | **string**| Filter for triggers containing the given words somewhere within name, description and tags | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreTriggerResource**](PageResourceBreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bre_trigger**
> BreTriggerResource update_bre_trigger(event_name => $event_name, bre_trigger_resource => $bre_trigger_resource)

Update a trigger

May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineTriggersApi;
my $api_instance = KnetikCloud::BRERuleEngineTriggersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $event_name = 'event_name_example'; # string | The trigger event name
my $bre_trigger_resource = KnetikCloud::Object::BreTriggerResource->new(); # BreTriggerResource | The BRE trigger resource object

eval { 
    my $result = $api_instance->update_bre_trigger(event_name => $event_name, bre_trigger_resource => $bre_trigger_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineTriggersApi->update_bre_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **string**| The trigger event name | 
 **bre_trigger_resource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

