# KnetikCloud::BRERuleEngineEventsApi

## Load the API package
```perl
use KnetikCloud::Object::BRERuleEngineEventsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_bre_event**](BRERuleEngineEventsApi.md#send_bre_event) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **send_bre_event**
> send_bre_event(bre_event => $bre_event)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::BRERuleEngineEventsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::BRERuleEngineEventsApi->new();
my $bre_event = KnetikCloud::Object::BreEvent->new(); # BreEvent | The BRE event object

eval { 
    $api_instance->send_bre_event(bre_event => $bre_event);
};
if ($@) {
    warn "Exception when calling BRERuleEngineEventsApi->send_bre_event: $@\n";
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

