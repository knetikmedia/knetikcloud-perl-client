# WWW::SwaggerClient::MediaModerationApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::MediaModerationApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_flag_report_using_get**](MediaModerationApi.md#get_flag_report_using_get) | **GET** /moderation/reports/{id} | Get a flag report
[**get_flags_report_using_get**](MediaModerationApi.md#get_flags_report_using_get) | **GET** /moderation/reports | Returns a page of flag reports
[**set_flag_resolution_using_put**](MediaModerationApi.md#set_flag_resolution_using_put) | **PUT** /moderation/reports/{id} | Update a flag report


# **get_flag_report_using_get**
> get_flag_report_using_get(id => $id)

Get a flag report

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaModerationApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaModerationApi->new();
my $id = 789; # int | The flag report id

eval { 
    $api_instance->get_flag_report_using_get(id => $id);
};
if ($@) {
    warn "Exception when calling MediaModerationApi->get_flag_report_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The flag report id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_flags_report_using_get**
> PageFlagReportResource get_flags_report_using_get(exclude_resolved => $exclude_resolved, filter_context => $filter_context, size => $size, page => $page)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaModerationApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaModerationApi->new();
my $exclude_resolved = 1; # boolean | Ignore resolved context
my $filter_context = 'filter_context_example'; # string | Filter by moderation context
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_flags_report_using_get(exclude_resolved => $exclude_resolved, filter_context => $filter_context, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaModerationApi->get_flags_report_using_get: $@\n";
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

[**PageFlagReportResource**](PageFlagReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_flag_resolution_using_put**
> set_flag_resolution_using_put(id => $id, flag_report_resource => $flag_report_resource)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaModerationApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaModerationApi->new();
my $id = 789; # int | The flag report id
my $flag_report_resource = WWW::SwaggerClient::Object::FlagReportResource->new(); # FlagReportResource | The new flag report

eval { 
    $api_instance->set_flag_resolution_using_put(id => $id, flag_report_resource => $flag_report_resource);
};
if ($@) {
    warn "Exception when calling MediaModerationApi->set_flag_resolution_using_put: $@\n";
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

