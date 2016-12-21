# WWW::SwaggerClient::ReportingUsersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ReportingUsersApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executive_revenue_item_sales_using_get1**](ReportingUsersApi.md#executive_revenue_item_sales_using_get1) | **GET** /reporting/users/registrations | Get user registration info


# **executive_revenue_item_sales_using_get1**
> PageResourceAggregateCountResource executive_revenue_item_sales_using_get1(granularity => $granularity, start_date => $start_date, end_date => $end_date)

Get user registration info

Get user registration counts grouped by time range

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ReportingUsersApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ReportingUsersApi->new();
my $granularity = 'granularity_example'; # string | The time duration to aggregate by
my $start_date = 789; # int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
my $end_date = 789; # int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

eval { 
    my $result = $api_instance->executive_revenue_item_sales_using_get1(granularity => $granularity, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsersApi->executive_revenue_item_sales_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **string**| The time duration to aggregate by | [optional] [default to day]
 **start_date** | **int**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **int**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**PageResourceAggregateCountResource**](PageResourceAggregateCountResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
