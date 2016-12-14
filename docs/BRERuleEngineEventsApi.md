# WWW::SwaggerClient::BRERuleEngineEventsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineEventsApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fire_event_using_post**](BRERuleEngineEventsApi.md#fire_event_using_post) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **fire_event_using_post**
> fire_event_using_post(bre_event => $bre_event, authentication => $authentication)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineEventsApi;

my $api_instance = WWW::SwaggerClient::BRERuleEngineEventsApi->new();
my $bre_event = WWW::SwaggerClient::Object::BreEvent->new(); # BreEvent | The BRE event object
my $authentication = WWW::SwaggerClient::Object::OAuth2Authentication->new(); # OAuth2Authentication | The authentication object

eval { 
    $api_instance->fire_event_using_post(bre_event => $bre_event, authentication => $authentication);
};
if ($@) {
    warn "Exception when calling BRERuleEngineEventsApi->fire_event_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_event** | [**BreEvent**](BreEvent.md)| The BRE event object | [optional] 
 **authentication** | [**OAuth2Authentication**](OAuth2Authentication.md)| The authentication object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

