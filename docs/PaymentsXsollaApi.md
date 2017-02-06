# WWW::SwaggerClient::PaymentsXsollaApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsXsollaApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_xsolla_token_url**](PaymentsXsollaApi.md#create_xsolla_token_url) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment
[**receive_notification_using_post**](PaymentsXsollaApi.md#receive_notification_using_post) | **POST** /payment/provider/xsolla/notifications | Receives payment response from Xsolla


# **create_xsolla_token_url**
> string create_xsolla_token_url(request => $request)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsXsollaApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsXsollaApi->new();
my $request = WWW::SwaggerClient::Object::XsollaPaymentRequest->new(); # XsollaPaymentRequest | The payment request to be sent to XSolla

eval { 
    my $result = $api_instance->create_xsolla_token_url(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsXsollaApi->create_xsolla_token_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**XsollaPaymentRequest**](XsollaPaymentRequest.md)| The payment request to be sent to XSolla | [optional] 

### Return type

**string**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receive_notification_using_post**
> receive_notification_using_post()

Receives payment response from Xsolla

Only used by XSolla to call back to JSAPI after processing user payment action

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsXsollaApi;

my $api_instance = WWW::SwaggerClient::PaymentsXsollaApi->new();

eval { 
    $api_instance->receive_notification_using_post();
};
if ($@) {
    warn "Exception when calling PaymentsXsollaApi->receive_notification_using_post: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

