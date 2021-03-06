# KnetikCloud::ReportingSubscriptionsApi

## Load the API package
```perl
use KnetikCloud::Object::ReportingSubscriptionsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_subscription_reports**](ReportingSubscriptionsApi.md#get_subscription_reports) | **GET** /reporting/subscription | Get a list of available subscription reports in most recent first order


# **get_subscription_reports**
> PageResourceBillingReport get_subscription_reports(size => $size, page => $page)

Get a list of available subscription reports in most recent first order

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ReportingSubscriptionsApi;
my $api_instance = KnetikCloud::ReportingSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

