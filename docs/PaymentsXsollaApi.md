# KnetikCloud::PaymentsXsollaApi

## Load the API package
```perl
use KnetikCloud::Object::PaymentsXsollaApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_xsolla_token_url**](PaymentsXsollaApi.md#create_xsolla_token_url) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment
[**receive_xsolla_notification**](PaymentsXsollaApi.md#receive_xsolla_notification) | **POST** /payment/provider/xsolla/notifications | Receives payment response from Xsolla


# **create_xsolla_token_url**
> string create_xsolla_token_url(request => $request)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsXsollaApi;
my $api_instance = KnetikCloud::PaymentsXsollaApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $request = KnetikCloud::Object::XsollaPaymentRequest->new(); # XsollaPaymentRequest | The payment request to be sent to XSolla

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receive_xsolla_notification**
> receive_xsolla_notification()

Receives payment response from Xsolla

Only used by Xsolla to call back to JSAPI after processing user payment action

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsXsollaApi;
my $api_instance = KnetikCloud::PaymentsXsollaApi->new(
);


eval { 
    $api_instance->receive_xsolla_notification();
};
if ($@) {
    warn "Exception when calling PaymentsXsollaApi->receive_xsolla_notification: $@\n";
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

