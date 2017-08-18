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
> PageResourceAggregateCountResource get_user_registrations(granularity => $granularity, start_date => $start_date, end_date => $end_date, size => $size, page => $page)

Get user registration info

Get user registration counts grouped by time range

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ReportingUsersApi;
my $api_instance = KnetikCloud::ReportingUsersApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $granularity = 'granularity_example'; # string | The time duration to aggregate by
my $start_date = 789; # int | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
my $end_date = 789; # int | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_registrations(granularity => $granularity, start_date => $start_date, end_date => $end_date, size => $size, page => $page);
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
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceAggregateCountResource**](PageResourceAggregateCountResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

