# WWW::SwaggerClient::PaymentsGoogleApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsGoogleApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handle_payment_using_post**](PaymentsGoogleApi.md#handle_payment_using_post) | **POST** /payment/provider/google/payments | Mark an invoice paid with Google


# **handle_payment_using_post**
> int handle_payment_using_post(request => $request)

Mark an invoice paid with Google

Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsGoogleApi;

my $api_instance = WWW::SwaggerClient::PaymentsGoogleApi->new();
my $request = WWW::SwaggerClient::Object::GooglePaymentRequest->new(); # GooglePaymentRequest | The request for paying an invoice through a Google in-app payment

eval { 
    my $result = $api_instance->handle_payment_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsGoogleApi->handle_payment_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**GooglePaymentRequest**](GooglePaymentRequest.md)| The request for paying an invoice through a Google in-app payment | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
