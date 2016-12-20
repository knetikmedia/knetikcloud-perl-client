# WWW::SwaggerClient::PaymentsPayPalClassicApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsPayPalClassicApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_billing_agreement_url_using_post**](PaymentsPayPalClassicApi.md#create_billing_agreement_url_using_post) | **POST** /payment/provider/paypal/classic/agreements/start | Create a PayPal Classic billing agreement for the user
[**express_checkout_using_post**](PaymentsPayPalClassicApi.md#express_checkout_using_post) | **POST** /payment/provider/paypal/classic/checkout/start | Create a payment token for PayPal express checkout
[**finalize_billing_agreement_using_post**](PaymentsPayPalClassicApi.md#finalize_billing_agreement_using_post) | **POST** /payment/provider/paypal/classic/agreements/finish | Finalizes a billing agreement after the user has accepted through PayPal
[**finalize_checkout_using_post**](PaymentsPayPalClassicApi.md#finalize_checkout_using_post) | **POST** /payment/provider/paypal/classic/checkout/finish | Finalizes a payment after the user has completed checkout with PayPal


# **create_billing_agreement_url_using_post**
> string create_billing_agreement_url_using_post(request => $request)

Create a PayPal Classic billing agreement for the user

Returns the token that should be used to forward the user to PayPal so they can accept the agreement.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsPayPalClassicApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsPayPalClassicApi->new();
my $request = WWW::SwaggerClient::Object::CreateBillingAgreementRequest->new(); # CreateBillingAgreementRequest | The request to create a PayPal billing agreement

eval { 
    my $result = $api_instance->create_billing_agreement_url_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->create_billing_agreement_url_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateBillingAgreementRequest**](CreateBillingAgreementRequest.md)| The request to create a PayPal billing agreement | [optional] 

### Return type

**string**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **express_checkout_using_post**
> string express_checkout_using_post(request => $request)

Create a payment token for PayPal express checkout

Returns the token that should be used to forward the user to PayPal so they can complete the checkout.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsPayPalClassicApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsPayPalClassicApi->new();
my $request = WWW::SwaggerClient::Object::CreatePayPalPaymentRequest->new(); # CreatePayPalPaymentRequest | The request to create a PayPal payment token

eval { 
    my $result = $api_instance->express_checkout_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->express_checkout_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreatePayPalPaymentRequest**](CreatePayPalPaymentRequest.md)| The request to create a PayPal payment token | [optional] 

### Return type

**string**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalize_billing_agreement_using_post**
> int finalize_billing_agreement_using_post(request => $request)

Finalizes a billing agreement after the user has accepted through PayPal

Returns the ID of the new payment method created for the user for the billing agreement.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsPayPalClassicApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsPayPalClassicApi->new();
my $request = WWW::SwaggerClient::Object::FinalizeBillingAgreementRequest->new(); # FinalizeBillingAgreementRequest | The request to finalize a PayPal billing agreement

eval { 
    my $result = $api_instance->finalize_billing_agreement_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->finalize_billing_agreement_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizeBillingAgreementRequest**](FinalizeBillingAgreementRequest.md)| The request to finalize a PayPal billing agreement | [optional] 

### Return type

**int**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalize_checkout_using_post**
> finalize_checkout_using_post(request => $request)

Finalizes a payment after the user has completed checkout with PayPal

The invoice will be marked paid/failed by asynchronous IPN callback.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsPayPalClassicApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsPayPalClassicApi->new();
my $request = WWW::SwaggerClient::Object::FinalizePayPalPaymentRequest->new(); # FinalizePayPalPaymentRequest | The request to finalize the payment

eval { 
    $api_instance->finalize_checkout_using_post(request => $request);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->finalize_checkout_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizePayPalPaymentRequest**](FinalizePayPalPaymentRequest.md)| The request to finalize the payment | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

