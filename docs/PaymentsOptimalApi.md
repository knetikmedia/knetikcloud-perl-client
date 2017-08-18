# KnetikCloud::PaymentsOptimalApi

## Load the API package
```perl
use KnetikCloud::Object::PaymentsOptimalApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**silent_post_optimal**](PaymentsOptimalApi.md#silent_post_optimal) | **POST** /payment/provider/optimal/silent | Initiate silent post with Optimal


# **silent_post_optimal**
> string silent_post_optimal(request => $request)

Initiate silent post with Optimal

Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsOptimalApi;
my $api_instance = KnetikCloud::PaymentsOptimalApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $request = KnetikCloud::Object::OptimalPaymentRequest->new(); # OptimalPaymentRequest | The payment request to initiate

eval { 
    my $result = $api_instance->silent_post_optimal(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsOptimalApi->silent_post_optimal: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**OptimalPaymentRequest**](OptimalPaymentRequest.md)| The payment request to initiate | [optional] 

### Return type

**string**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

