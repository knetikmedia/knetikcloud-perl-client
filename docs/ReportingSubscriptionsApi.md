# WWW::SwaggerClient::ReportingSubscriptionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ReportingSubscriptionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_billing_reports_using_get**](ReportingSubscriptionsApi.md#list_billing_reports_using_get) | **GET** /reporting/subscription | Get a list of available subscription reports in most recent first order


# **list_billing_reports_using_get**
> PageBillingReport list_billing_reports_using_get(size => $size, page => $page)

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
    my $result = $api_instance->list_billing_reports_using_get(size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingSubscriptionsApi->list_billing_reports_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageBillingReport**](PageBillingReport.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

