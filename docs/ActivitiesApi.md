# KnetikCloud::ActivitiesApi

## Load the API package
```perl
use KnetikCloud::Object::ActivitiesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_activity**](ActivitiesApi.md#create_activity) | **POST** /activities | Create an activity
[**create_activity_occurrence**](ActivitiesApi.md#create_activity_occurrence) | **POST** /activity-occurrences | Create a new activity occurrence. Ex: start a game
[**create_activity_template**](ActivitiesApi.md#create_activity_template) | **POST** /activities/templates | Create a activity template
[**delete_activity**](ActivitiesApi.md#delete_activity) | **DELETE** /activities/{id} | Delete an activity
[**delete_activity_template**](ActivitiesApi.md#delete_activity_template) | **DELETE** /activities/templates/{id} | Delete a activity template
[**get_activities**](ActivitiesApi.md#get_activities) | **GET** /activities | List activity definitions
[**get_activity**](ActivitiesApi.md#get_activity) | **GET** /activities/{id} | Get a single activity
[**get_activity_template**](ActivitiesApi.md#get_activity_template) | **GET** /activities/templates/{id} | Get a single activity template
[**get_activity_templates**](ActivitiesApi.md#get_activity_templates) | **GET** /activities/templates | List and search activity templates
[**set_activity_occurrence_results**](ActivitiesApi.md#set_activity_occurrence_results) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**update_activity**](ActivitiesApi.md#update_activity) | **PUT** /activities/{id} | Update an activity
[**update_activity_occurrence**](ActivitiesApi.md#update_activity_occurrence) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**update_activity_template**](ActivitiesApi.md#update_activity_template) | **PUT** /activities/templates/{id} | Update an activity template


# **create_activity**
> RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc create_activity(activity_resource => $activity_resource)

Create an activity

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $activity_resource = KnetikCloud::Object::RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc->new(); # RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc | The activity resource object

eval { 
    my $result = $api_instance->create_activity(activity_resource => $activity_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->create_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_resource** | [**RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc**](RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc.md)| The activity resource object | [optional] 

### Return type

[**RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc**](RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_activity_occurrence**
> AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings create_activity_occurrence(test => $test, activity_occurrence_resource => $activity_occurrence_resource)

Create a new activity occurrence. Ex: start a game

Has to enforce extra rules if not used as an admin

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $test = 1; # boolean | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
my $activity_occurrence_resource = KnetikCloud::Object::AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings->new(); # AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings | The activity occurrence object

eval { 
    my $result = $api_instance->create_activity_occurrence(test => $test, activity_occurrence_resource => $activity_occurrence_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->create_activity_occurrence: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test** | **boolean**| if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings | [optional] [default to false]
 **activity_occurrence_resource** | [**AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings**](AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings.md)| The activity occurrence object | [optional] 

### Return type

[**AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings**](AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_activity_template**
> TemplateResource create_activity_template(activity_template_resource => $activity_template_resource)

Create a activity template

Activity Templates define a type of activity and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $activity_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The activity template resource object

eval { 
    my $result = $api_instance->create_activity_template(activity_template_resource => $activity_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->create_activity_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_template_resource** | [**TemplateResource**](TemplateResource.md)| The activity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_activity**
> delete_activity(id => $id)

Delete an activity

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $id = 789; # int | The id of the activity

eval { 
    $api_instance->delete_activity(id => $id);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->delete_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_activity_template**
> delete_activity_template(id => $id, cascade => $cascade)

Delete a activity template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_activity_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->delete_activity_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activities**
> PageResourceBareActivityResource get_activities(filter_template => $filter_template, filter_name => $filter_name, filter_id => $filter_id, size => $size, page => $page, order => $order)

List activity definitions

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $filter_template = 1; # boolean | Filter for activities that are templates, or specifically not if false
my $filter_name = 'filter_name_example'; # string | Filter for activities that have a name starting with specified string
my $filter_id = ; # Object | Filter for activities with an id in the given comma separated list of ids
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_activities(filter_template => $filter_template, filter_name => $filter_name, filter_id => $filter_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->get_activities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **boolean**| Filter for activities that are templates, or specifically not if false | [optional] 
 **filter_name** | **string**| Filter for activities that have a name starting with specified string | [optional] 
 **filter_id** | [**Object**](.md)| Filter for activities with an id in the given comma separated list of ids | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceBareActivityResource**](PageResourceBareActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activity**
> RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc get_activity(id => $id)

Get a single activity

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $id = 789; # int | The id of the activity

eval { 
    my $result = $api_instance->get_activity(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->get_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 

### Return type

[**RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc**](RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activity_template**
> TemplateResource get_activity_template(id => $id)

Get a single activity template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_activity_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->get_activity_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activity_templates**
> PageResourceTemplateResource get_activity_templates(size => $size, page => $page, order => $order)

List and search activity templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_activity_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->get_activity_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_activity_occurrence_results**
> ActivityOccurrenceResults set_activity_occurrence_results(activity_occurrence_id => $activity_occurrence_id, activity_occurrence_results => $activity_occurrence_results)

Sets the status of an activity occurrence to FINISHED and logs metrics

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $activity_occurrence_id = 789; # int | The id of the activity occurrence
my $activity_occurrence_results = KnetikCloud::Object::ActivityOccurrenceResults->new(); # ActivityOccurrenceResults | The activity occurrence object

eval { 
    my $result = $api_instance->set_activity_occurrence_results(activity_occurrence_id => $activity_occurrence_id, activity_occurrence_results => $activity_occurrence_results);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->set_activity_occurrence_results: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_activity**
> RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc update_activity(id => $id, activity_resource => $activity_resource)

Update an activity

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $id = 789; # int | The id of the activity
my $activity_resource = KnetikCloud::Object::RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc->new(); # RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc | The activity resource object

eval { 
    my $result = $api_instance->update_activity(id => $id, activity_resource => $activity_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->update_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the activity | 
 **activity_resource** | [**RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc**](RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc.md)| The activity resource object | [optional] 

### Return type

[**RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc**](RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_activity_occurrence**
> update_activity_occurrence(activity_occurrence_id => $activity_occurrence_id, activity_cccurrence_status => $activity_cccurrence_status)

Updated the status of an activity occurrence

If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $activity_occurrence_id = 789; # int | The id of the activity occurrence
my $activity_cccurrence_status = KnetikCloud::Object::string->new(); # string | The activity occurrence status object

eval { 
    $api_instance->update_activity_occurrence(activity_occurrence_id => $activity_occurrence_id, activity_cccurrence_status => $activity_cccurrence_status);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->update_activity_occurrence: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_activity_template**
> TemplateResource update_activity_template(id => $id, activity_template_resource => $activity_template_resource)

Update an activity template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ActivitiesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ActivitiesApi->new();
my $id = 'id_example'; # string | The id of the template
my $activity_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The activity template resource object

eval { 
    my $result = $api_instance->update_activity_template(id => $id, activity_template_resource => $activity_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ActivitiesApi->update_activity_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **activity_template_resource** | [**TemplateResource**](TemplateResource.md)| The activity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

