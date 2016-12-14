# WWW::SwaggerClient::ActivitiesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ActivitiesApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**complete_activity_occurrence_using_put**](ActivitiesApi.md#complete_activity_occurrence_using_put) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**create_activity_occurrence_using_post**](ActivitiesApi.md#create_activity_occurrence_using_post) | **POST** /activity-occurrences | Create a new activity occurrence
[**create_activity_using_post**](ActivitiesApi.md#create_activity_using_post) | **POST** /activities | Create an activity
[**delete_activity_using_delete**](ActivitiesApi.md#delete_activity_using_delete) | **DELETE** /activities/{id} | Delete an activity
[**get_activities_using_get**](ActivitiesApi.md#get_activities_using_get) | **GET** /activities | List activity definitions
[**get_activity_using_get**](ActivitiesApi.md#get_activity_using_get) | **GET** /activities/{id} | Get a single activity
[**post_results_using_post**](ActivitiesApi.md#post_results_using_post) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**update_activity_using_put**](ActivitiesApi.md#update_activity_using_put) | **PUT** /activities/{id} | Update an activity


# **complete_activity_occurrence_using_put**
> complete_activity_occurrence_using_put(activity_occurrence_id => $activity_occurrence_id, activity_cccurrence_status => $activity_cccurrence_status)

Updated the status of an activity occurrence

If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $activity_occurrence_id = 789; # int | The id of the activity occurrence
my $activity_cccurrence_status = WWW::SwaggerClient::Object::string->new(); # string | The activity occurrence status object

eval { 
    $api_instance->complete_activity_occurrence_using_put(activity_occurrence_id => $activity_occurrence_id, activity_cccurrence_status => $activity_cccurrence_status);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->complete_activity_occurrence_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **int**| The id of the activity occurrence | 
 **activity_cccurrence_status** | **string**| The activity occurrence status object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_activity_occurrence_using_post**
> ActivityOccurrenceResource create_activity_occurrence_using_post(test => $test, activity_occurrence_resource => $activity_occurrence_resource)

Create a new activity occurrence

Has to enforce extra rules if not used as an admin

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $test = 1; # boolean | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
my $activity_occurrence_resource = WWW::SwaggerClient::Object::ActivityOccurrenceResource->new(); # ActivityOccurrenceResource | The activity occurrence object

eval { 
    my $result = $api_instance->create_activity_occurrence_using_post(test => $test, activity_occurrence_resource => $activity_occurrence_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->create_activity_occurrence_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test** | **boolean**| if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings | [optional] [default to false]
 **activity_occurrence_resource** | [**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_activity_using_post**
> ActivityResource create_activity_using_post(activity_resource => $activity_resource)

Create an activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $activity_resource = WWW::SwaggerClient::Object::ActivityResource->new(); # ActivityResource | The activity resource object

eval { 
    my $result = $api_instance->create_activity_using_post(activity_resource => $activity_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->create_activity_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_resource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_activity_using_delete**
> delete_activity_using_delete(id => $id)

Delete an activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $id = 789; # int | The id of the activity

eval { 
    $api_instance->delete_activity_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->delete_activity_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activities_using_get**
> PageBareActivityResource get_activities_using_get(filter_template => $filter_template, size => $size, page => $page, order => $order)

List activity definitions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $filter_template = 1; # boolean | Filter for activities that are templates, or specifically not if false
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_activities_using_get(filter_template => $filter_template, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->get_activities_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **boolean**| Filter for activities that are templates, or specifically not if false | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageBareActivityResource**](PageBareActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activity_using_get**
> ActivityResource get_activity_using_get(id => $id)

Get a single activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $id = 789; # int | The id of the activity

eval { 
    my $result = $api_instance->get_activity_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->get_activity_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_results_using_post**
> ActivityOccurrenceResults post_results_using_post(activity_occurrence_id => $activity_occurrence_id, activity_occurrence_results => $activity_occurrence_results)

Sets the status of an activity occurrence to FINISHED and logs metrics

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $activity_occurrence_id = 789; # int | The id of the activity occurrence
my $activity_occurrence_results = WWW::SwaggerClient::Object::ActivityOccurrenceResults->new(); # ActivityOccurrenceResults | The activity occurrence object

eval { 
    my $result = $api_instance->post_results_using_post(activity_occurrence_id => $activity_occurrence_id, activity_occurrence_results => $activity_occurrence_results);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->post_results_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **int**| The id of the activity occurrence | 
 **activity_occurrence_results** | [**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_activity_using_put**
> update_activity_using_put(id => $id, activity_resource => $activity_resource)

Update an activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ActivitiesApi;

my $api_instance = WWW::SwaggerClient::ActivitiesApi->new();
my $id = 789; # int | The id of the activity
my $activity_resource = WWW::SwaggerClient::Object::ActivityResource->new(); # ActivityResource | The activity resource object

eval { 
    $api_instance->update_activity_using_put(id => $id, activity_resource => $activity_resource);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->update_activity_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 
 **activity_resource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

