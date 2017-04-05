# KnetikCloud::ReportingUsersApi

## Load the API package
```perl
use KnetikCloud::Object::ReportingUsersApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_registrations**](ReportingUsersApi.md#get_user_registrations) | **GET** /reporting/users/registrations | Get user registration info


# **get_user_registrations**
> PageResourceAggregateCountResource get_user_registrations(granularity => $granularity, start_date => $start_date, end_date => $end_date)

Get user registration info

Get user registration counts grouped by time range

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsersApi->new();
my $granularity = 'granularity_example'; # string | The time duration to aggregate by
my $start_date = 789; # int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
my $end_date = 789; # int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time

eval { 
    my $result = $api_instance->get_user_registrations(granularity => $granularity, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsersApi->get_user_registrations: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

