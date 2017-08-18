# KnetikCloud::ReportingOrdersApi

## Load the API package
```perl
use KnetikCloud::Object::ReportingOrdersApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_reports**](ReportingOrdersApi.md#get_invoice_reports) | **GET** /reporting/orders/count/{currency_code} | Retrieve invoice counts aggregated by time ranges


# **get_invoice_reports**
> PageResourceAggregateInvoiceReportResource get_invoice_reports(currency_code => $currency_code, granularity => $granularity, filter_payment_status => $filter_payment_status, filter_fulfillment_status => $filter_fulfillment_status, start_date => $start_date, end_date => $end_date, size => $size, page => $page)

Retrieve invoice counts aggregated by time ranges

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ReportingOrdersApi;
my $api_instance = KnetikCloud::ReportingOrdersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $currency_code = 'currency_code_example'; # string | The code for a currency to get sales data for
my $granularity = 'granularity_example'; # string | The time duration to aggregate by
my $filter_payment_status = 'filter_payment_status_example'; # string | A payment status to filter results by, can be a comma separated list
my $filter_fulfillment_status = 'filter_fulfillment_status_example'; # string | An invoice fulfillment status to filter results by, can be a comma separated list
my $start_date = 789; # int | The start of the time range to return, unix timestamp in seconds. Default is beginning of time
my $end_date = 789; # int | The end of the time range to return, unix timestamp in seconds. Default is end of time
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned

eval { 
    my $result = $api_instance->get_invoice_reports(currency_code => $currency_code, granularity => $granularity, filter_payment_status => $filter_payment_status, filter_fulfillment_status => $filter_fulfillment_status, start_date => $start_date, end_date => $end_date, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingOrdersApi->get_invoice_reports: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **string**| The code for a currency to get sales data for | 
 **granularity** | **string**| The time duration to aggregate by | [optional] [default to day]
 **filter_payment_status** | **string**| A payment status to filter results by, can be a comma separated list | [optional] 
 **filter_fulfillment_status** | **string**| An invoice fulfillment status to filter results by, can be a comma separated list | [optional] 
 **start_date** | **int**| The start of the time range to return, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **int**| The end of the time range to return, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]

### Return type

[**PageResourceAggregateInvoiceReportResource**](PageResourceAggregateInvoiceReportResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

