# WWW::SwaggerClient::BRERuleEngineEventsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineEventsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fire_event_using_post**](BRERuleEngineEventsApi.md#fire_event_using_post) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **fire_event_using_post**
> fire_event_using_post(bre_event => $bre_event)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineEventsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineEventsApi->new();
my $bre_event = WWW::SwaggerClient::Object::BreEvent->new(); # BreEvent | The BRE event object

eval { 
    $api_instance->fire_event_using_post(bre_event => $bre_event);
};
if ($@) {
    warn "Exception when calling BRERuleEngineEventsApi->fire_event_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_event** | [**BreEvent**](BreEvent.md)| The BRE event object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

