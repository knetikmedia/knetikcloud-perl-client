# KnetikCloud::MediaModerationApi

## Load the API package
```perl
use KnetikCloud::Object::MediaModerationApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_moderation_report**](MediaModerationApi.md#get_moderation_report) | **GET** /moderation/reports/{id} | Get a flag report
[**get_moderation_reports**](MediaModerationApi.md#get_moderation_reports) | **GET** /moderation/reports | Returns a page of flag reports
[**update_moderation_report**](MediaModerationApi.md#update_moderation_report) | **PUT** /moderation/reports/{id} | Update a flag report


# **get_moderation_report**
> FlagReportResource get_moderation_report(id => $id)

Get a flag report

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::MediaModerationApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::MediaModerationApi->new();
my $id = 789; # int | The flag report id

eval { 
    my $result = $api_instance->get_moderation_report(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaModerationApi->get_moderation_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 

### Return type

[**FlagReportResource**](FlagReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_moderation_reports**
> PageResourceFlagReportResource get_moderation_reports(exclude_resolved => $exclude_resolved, filter_context => $filter_context, size => $size, page => $page)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::MediaModerationApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::MediaModerationApi->new();
my $exclude_resolved = 1; # boolean | Ignore resolved context
my $filter_context = 'filter_context_example'; # string | Filter by moderation context
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_moderation_reports(exclude_resolved => $exclude_resolved, filter_context => $filter_context, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaModerationApi->get_moderation_reports: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exclude_resolved** | **boolean**| Ignore resolved context | [optional] [default to true]
 **filter_context** | **string**| Filter by moderation context | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceFlagReportResource**](PageResourceFlagReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_moderation_report**
> update_moderation_report(id => $id, flag_report_resource => $flag_report_resource)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::MediaModerationApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::MediaModerationApi->new();
my $id = 789; # int | The flag report id
my $flag_report_resource = KnetikCloud::Object::FlagReportResource->new(); # FlagReportResource | The new flag report

eval { 
    $api_instance->update_moderation_report(id => $id, flag_report_resource => $flag_report_resource);
};
if ($@) {
    warn "Exception when calling MediaModerationApi->update_moderation_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 
 **flag_report_resource** | [**FlagReportResource**](FlagReportResource.md)| The new flag report | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

