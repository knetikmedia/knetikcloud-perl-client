# WWW::SwaggerClient::PaymentsPayPalClassicApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsPayPalClassicApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pay_pal_billing_agreement_url**](PaymentsPayPalClassicApi.md#create_pay_pal_billing_agreement_url) | **POST** /payment/provider/paypal/classic/agreements/start | Create a PayPal Classic billing agreement for the user
[**create_pay_pal_express_checkout**](PaymentsPayPalClassicApi.md#create_pay_pal_express_checkout) | **POST** /payment/provider/paypal/classic/checkout/start | Create a payment token for PayPal express checkout
[**finalize_pay_pal_billing_agreement**](PaymentsPayPalClassicApi.md#finalize_pay_pal_billing_agreement) | **POST** /payment/provider/paypal/classic/agreements/finish | Finalizes a billing agreement after the user has accepted through PayPal
[**finalize_pay_pal_checkout**](PaymentsPayPalClassicApi.md#finalize_pay_pal_checkout) | **POST** /payment/provider/paypal/classic/checkout/finish | Finalizes a payment after the user has completed checkout with PayPal


# **create_pay_pal_billing_agreement_url**
> string create_pay_pal_billing_agreement_url(request => $request)

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
    my $result = $api_instance->create_pay_pal_billing_agreement_url(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->create_pay_pal_billing_agreement_url: $@\n";
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

# **create_pay_pal_express_checkout**
> string create_pay_pal_express_checkout(request => $request)

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
    my $result = $api_instance->create_pay_pal_express_checkout(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->create_pay_pal_express_checkout: $@\n";
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

# **finalize_pay_pal_billing_agreement**
> int finalize_pay_pal_billing_agreement(request => $request)

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
    my $result = $api_instance->finalize_pay_pal_billing_agreement(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->finalize_pay_pal_billing_agreement: $@\n";
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

# **finalize_pay_pal_checkout**
> finalize_pay_pal_checkout(request => $request)

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
    $api_instance->finalize_pay_pal_checkout(request => $request);
};
if ($@) {
    warn "Exception when calling PaymentsPayPalClassicApi->finalize_pay_pal_checkout: $@\n";
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

