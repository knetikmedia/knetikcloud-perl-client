# WWW::SwaggerClient::LogsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::LogsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_log**](LogsApi.md#add_user_log) | **POST** /audit/logs | Add a user log entry
[**get_bre_event_log**](LogsApi.md#get_bre_event_log) | **GET** /bre/logs/event-log/{id} | Get an existing BRE event log entry by id
[**get_bre_event_logs**](LogsApi.md#get_bre_event_logs) | **GET** /bre/logs/event-log | Returns a list of BRE event log entries
[**get_bre_forward_log**](LogsApi.md#get_bre_forward_log) | **GET** /bre/logs/forward-log/{id} | Get an existing forward log entry by id
[**get_bre_forward_logs**](LogsApi.md#get_bre_forward_logs) | **GET** /bre/logs/forward-log | Returns a list of forward log entries
[**get_user_log**](LogsApi.md#get_user_log) | **GET** /audit/logs/{id} | Returns a user log entry by id
[**get_user_logs**](LogsApi.md#get_user_logs) | **GET** /audit/logs | Returns a page of user logs entries


# **add_user_log**
> add_user_log(log_entry => $log_entry)

Add a user log entry

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $log_entry = WWW::SwaggerClient::Object::UserActionLog->new(); # UserActionLog | The user log entry to be added

eval { 
    $api_instance->add_user_log(log_entry => $log_entry);
};
if ($@) {
    warn "Exception when calling LogsApi->add_user_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **log_entry** | [**UserActionLog**](UserActionLog.md)| The user log entry to be added | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_event_log**
> BreEventLog get_bre_event_log(id => $id)

Get an existing BRE event log entry by id

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $id = 'id_example'; # string | The BRE event log entry id

eval { 
    my $result = $api_instance->get_bre_event_log(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogsApi->get_bre_event_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The BRE event log entry id | 

### Return type

[**BreEventLog**](BreEventLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_event_logs**
> PageResourceBreEventLog get_bre_event_logs(filter_start_date => $filter_start_date, filter_event_name => $filter_event_name, size => $size, page => $page, order => $order)

Returns a list of BRE event log entries

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $filter_start_date = 'filter_start_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_event_name = 'filter_event_name_example'; # string | Filter event logs by event name
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_bre_event_logs(filter_start_date => $filter_start_date, filter_event_name => $filter_event_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogsApi->get_bre_event_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_event_name** | **string**| Filter event logs by event name | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]

### Return type

[**PageResourceBreEventLog**](PageResourceBreEventLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_forward_log**
> ForwardLog get_bre_forward_log(id => $id)

Get an existing forward log entry by id

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $id = 'id_example'; # string | The forward log entry id

eval { 
    my $result = $api_instance->get_bre_forward_log(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogsApi->get_bre_forward_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The forward log entry id | 

### Return type

[**ForwardLog**](ForwardLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_forward_logs**
> PageResourceForwardLog get_bre_forward_logs(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_status_code => $filter_status_code, size => $size, page => $page, order => $order)

Returns a list of forward log entries

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $filter_start_date = 'filter_start_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_end_date = 'filter_end_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_status_code = 56; # int | Filter forward logs by http status code
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_bre_forward_logs(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_status_code => $filter_status_code, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogsApi->get_bre_forward_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_status_code** | **int**| Filter forward logs by http status code | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]

### Return type

[**PageResourceForwardLog**](PageResourceForwardLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_log**
> UserActionLog get_user_log(id => $id)

Returns a user log entry by id

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $id = 'id_example'; # string | The user log entry id

eval { 
    my $result = $api_instance->get_user_log(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogsApi->get_user_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The user log entry id | 

### Return type

[**UserActionLog**](UserActionLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_logs**
> PageResourceUserActionLog get_user_logs(filter_user => $filter_user, filter_action_name => $filter_action_name, size => $size, page => $page)

Returns a page of user logs entries

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::LogsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::LogsApi->new();
my $filter_user = 56; # int | Filter for actions taken by a specific user by id
my $filter_action_name = 'filter_action_name_example'; # string | Filter for actions of a specific name
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_logs(filter_user => $filter_user, filter_action_name => $filter_action_name, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LogsApi->get_user_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_user** | **int**| Filter for actions taken by a specific user by id | [optional] 
 **filter_action_name** | **string**| Filter for actions of a specific name | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserActionLog**](PageResourceUserActionLog.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

