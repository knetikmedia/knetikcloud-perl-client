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
> string send_bre_event(bre_event => $bre_event)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.  Returns request id, which will be used as the event id

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineEventsApi;
my $api_instance = KnetikCloud::BRERuleEngineEventsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $bre_event = KnetikCloud::Object::BreEvent->new(); # BreEvent | The BRE event object

eval { 
    my $result = $api_instance->send_bre_event(bre_event => $bre_event);
    print Dumper($result);
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

**string**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

