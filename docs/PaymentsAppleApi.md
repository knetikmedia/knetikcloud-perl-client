# WWW::SwaggerClient::PaymentsAppleApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsAppleApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verify_apple_receipt**](PaymentsAppleApi.md#verify_apple_receipt) | **POST** /payment/provider/apple/receipt | Pay invoice with Apple receipt


# **verify_apple_receipt**
> string verify_apple_receipt(request => $request)

Pay invoice with Apple receipt

Mark an invoice paid using Apple payment receipt. A receipt will only be accepted once and the details of the transaction must match the invoice, including the product_id matching the sku text of the item in the invoice. Returns the transaction ID if successful.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsAppleApi;

my $api_instance = WWW::SwaggerClient::PaymentsAppleApi->new();
my $request = WWW::SwaggerClient::Object::ApplyPaymentRequest->new(); # ApplyPaymentRequest | The request for paying an invoice through an Apple receipt

eval { 
    my $result = $api_instance->verify_apple_receipt(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsAppleApi->verify_apple_receipt: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ApplyPaymentRequest**](ApplyPaymentRequest.md)| The request for paying an invoice through an Apple receipt | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

