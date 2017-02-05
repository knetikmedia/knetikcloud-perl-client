# WWW::SwaggerClient::PaymentsOptimalApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsOptimalApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**silent_post_using_post**](PaymentsOptimalApi.md#silent_post_using_post) | **POST** /payment/provider/optimal/silent | Initiate silent post with Optimal


# **silent_post_using_post**
> string silent_post_using_post(request => $request)

Initiate silent post with Optimal

Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsOptimalApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsOptimalApi->new();
my $request = WWW::SwaggerClient::Object::OptimalPaymentRequest->new(); # OptimalPaymentRequest | The payment request to initiate

eval { 
    my $result = $api_instance->silent_post_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsOptimalApi->silent_post_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**OptimalPaymentRequest**](OptimalPaymentRequest.md)| The payment request to initiate | [optional] 

### Return type

**string**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

