# KnetikCloud::PaymentsGoogleApi

## Load the API package
```perl
use KnetikCloud::Object::PaymentsGoogleApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handle_google_payment**](PaymentsGoogleApi.md#handle_google_payment) | **POST** /payment/provider/google/payments | Mark an invoice paid with Google


# **handle_google_payment**
> int handle_google_payment(request => $request)

Mark an invoice paid with Google

Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsGoogleApi;
my $api_instance = KnetikCloud::PaymentsGoogleApi->new(
);

my $request = KnetikCloud::Object::GooglePaymentRequest->new(); # GooglePaymentRequest | The request for paying an invoice through a Google in-app payment

eval { 
    my $result = $api_instance->handle_google_payment(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsGoogleApi->handle_google_payment: $@\n";
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

