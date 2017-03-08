# KnetikCloud::ReportingUsageApi

## Load the API package
```perl
use KnetikCloud::Object::ReportingUsageApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_usage_by_day**](ReportingUsageApi.md#get_usage_by_day) | **GET** /reporting/usage/day | Returns aggregated endpoint usage information by day
[**get_usage_by_hour**](ReportingUsageApi.md#get_usage_by_hour) | **GET** /reporting/usage/hour | Returns aggregated endpoint usage information by hour
[**get_usage_by_minute**](ReportingUsageApi.md#get_usage_by_minute) | **GET** /reporting/usage/minute | Returns aggregated endpoint usage information by minute
[**get_usage_by_month**](ReportingUsageApi.md#get_usage_by_month) | **GET** /reporting/usage/month | Returns aggregated endpoint usage information by month
[**get_usage_by_year**](ReportingUsageApi.md#get_usage_by_year) | **GET** /reporting/usage/year | Returns aggregated endpoint usage information by year
[**get_usage_endpoints**](ReportingUsageApi.md#get_usage_endpoints) | **GET** /reporting/usage/endpoints | Returns list of endpoints called (method and url)


# **get_usage_by_day**
> PageResourceUsageInfo get_usage_by_day(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page)

Returns aggregated endpoint usage information by day

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsageApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsageApi->new();
my $start_date = 789; # int | The beginning of the range being requested, unix timestamp in seconds
my $end_date = 789; # int | The ending of the range being requested, unix timestamp in seconds
my $combine_endpoints = 1; # boolean | Whether to combine counts from different endpoint. Removes the url and method from the result object
my $method = 'method_example'; # string | Filter for a certain endpoint method.  Must include url as well to work
my $url = 'url_example'; # string | Filter for a certain endpoint.  Must include method as well to work
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_usage_by_day(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsageApi->get_usage_by_day: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **boolean**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **string**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **string**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_by_hour**
> PageResourceUsageInfo get_usage_by_hour(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page)

Returns aggregated endpoint usage information by hour

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsageApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsageApi->new();
my $start_date = 789; # int | The beginning of the range being requested, unix timestamp in seconds
my $end_date = 789; # int | The ending of the range being requested, unix timestamp in seconds
my $combine_endpoints = 1; # boolean | Whether to combine counts from different endpoint. Removes the url and method from the result object
my $method = 'method_example'; # string | Filter for a certain endpoint method.  Must include url as well to work
my $url = 'url_example'; # string | Filter for a certain endpoint.  Must include method as well to work
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_usage_by_hour(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsageApi->get_usage_by_hour: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **boolean**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **string**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **string**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_by_minute**
> PageResourceUsageInfo get_usage_by_minute(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page)

Returns aggregated endpoint usage information by minute

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsageApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsageApi->new();
my $start_date = 789; # int | The beginning of the range being requested, unix timestamp in seconds
my $end_date = 789; # int | The ending of the range being requested, unix timestamp in seconds
my $combine_endpoints = 1; # boolean | Whether to combine counts from different endpoint. Removes the url and method from the result object
my $method = 'method_example'; # string | Filter for a certain endpoint method.  Must include url as well to work
my $url = 'url_example'; # string | Filter for a certain endpoint.  Must include method as well to work
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_usage_by_minute(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsageApi->get_usage_by_minute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **boolean**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **string**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **string**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_by_month**
> PageResourceUsageInfo get_usage_by_month(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page)

Returns aggregated endpoint usage information by month

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsageApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsageApi->new();
my $start_date = 789; # int | The beginning of the range being requested, unix timestamp in seconds
my $end_date = 789; # int | The ending of the range being requested, unix timestamp in seconds
my $combine_endpoints = 1; # boolean | Whether to combine counts from different endpoint. Removes the url and method from the result object
my $method = 'method_example'; # string | Filter for a certain endpoint method.  Must include url as well to work
my $url = 'url_example'; # string | Filter for a certain endpoint.  Must include method as well to work
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_usage_by_month(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsageApi->get_usage_by_month: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **boolean**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **string**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **string**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_by_year**
> PageResourceUsageInfo get_usage_by_year(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page)

Returns aggregated endpoint usage information by year

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsageApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsageApi->new();
my $start_date = 789; # int | The beginning of the range being requested, unix timestamp in seconds
my $end_date = 789; # int | The ending of the range being requested, unix timestamp in seconds
my $combine_endpoints = 1; # boolean | Whether to combine counts from different endpoints. Removes the url and method from the result object
my $method = 'method_example'; # string | Filter for a certain endpoint method.  Must include url as well to work
my $url = 'url_example'; # string | Filter for a certain endpoint.  Must include method as well to work
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_usage_by_year(start_date => $start_date, end_date => $end_date, combine_endpoints => $combine_endpoints, method => $method, url => $url, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsageApi->get_usage_by_year: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **int**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **boolean**| Whether to combine counts from different endpoints. Removes the url and method from the result object | [optional] [default to false]
 **method** | **string**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **string**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage_endpoints**
> ARRAY[string] get_usage_endpoints(start_date => $start_date, end_date => $end_date)

Returns list of endpoints called (method and url)

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingUsageApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingUsageApi->new();
my $start_date = 789; # int | The beginning of the range being requested, unix timestamp in seconds
my $end_date = 789; # int | The ending of the range being requested, unix timestamp in seconds

eval { 
    my $result = $api_instance->get_usage_endpoints(start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingUsageApi->get_usage_endpoints: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **int**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **int**| The ending of the range being requested, unix timestamp in seconds | 

### Return type

**ARRAY[string]**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

