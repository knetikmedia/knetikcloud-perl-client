# WWW::SwaggerClient::ReportingSubscriptionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ReportingSubscriptionsApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_subscription_reports**](ReportingSubscriptionsApi.md#get_subscription_reports) | **GET** /reporting/subscription | Get a list of available subscription reports in most recent first order


# **get_subscription_reports**
> PageResourceBillingReport get_subscription_reports(size => $size, page => $page)

Get a list of available subscription reports in most recent first order

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ReportingSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ReportingSubscriptionsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_subscription_reports(size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingSubscriptionsApi->get_subscription_reports: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBillingReport**](PageResourceBillingReport.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

