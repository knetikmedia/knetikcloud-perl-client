# WWW::SwaggerClient::CampaignsChallengesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::CampaignsChallengesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_challenge_activity_using_post**](CampaignsChallengesApi.md#create_challenge_activity_using_post) | **POST** /challenges/{challenge_id}/activities | Create a challenge activity
[**create_challenge_template_using_post**](CampaignsChallengesApi.md#create_challenge_template_using_post) | **POST** /challenges/templates | Create a challenge template
[**create_challenge_using_post**](CampaignsChallengesApi.md#create_challenge_using_post) | **POST** /challenges | Create a challenge
[**delete_challenge_activity_using_delete**](CampaignsChallengesApi.md#delete_challenge_activity_using_delete) | **DELETE** /challenges/{challenge_id}/activities/{activity_id} | Delete a challenge activity
[**delete_challenge_event_using_delete**](CampaignsChallengesApi.md#delete_challenge_event_using_delete) | **DELETE** /challenges/events/{id} | Delete a challenge event
[**delete_challenge_template_using_delete**](CampaignsChallengesApi.md#delete_challenge_template_using_delete) | **DELETE** /challenges/templates/{id} | Delete a challenge template
[**delete_challenge_using_delete**](CampaignsChallengesApi.md#delete_challenge_using_delete) | **DELETE** /challenges/{id} | Delete a challenge
[**get_activities_using_get1**](CampaignsChallengesApi.md#get_activities_using_get1) | **GET** /challenges/{challenge_id}/activities | List and search challenge activities
[**get_challenge_activity_using_get**](CampaignsChallengesApi.md#get_challenge_activity_using_get) | **GET** /challenges/{challenge_id}/activities/{activity_id} | Get a single challenge activity
[**get_challenge_event_using_get**](CampaignsChallengesApi.md#get_challenge_event_using_get) | **GET** /challenges/events/{id} | Retrieve a single challenge event details
[**get_challenge_eventss_using_get**](CampaignsChallengesApi.md#get_challenge_eventss_using_get) | **GET** /challenges/events | Retrieve a list of challenge events
[**get_challenge_template_using_get**](CampaignsChallengesApi.md#get_challenge_template_using_get) | **GET** /challenges/templates/{id} | Get a single challenge template
[**get_challenge_templates_using_get**](CampaignsChallengesApi.md#get_challenge_templates_using_get) | **GET** /challenges/templates | List and search challenge templates
[**get_challenge_using_get**](CampaignsChallengesApi.md#get_challenge_using_get) | **GET** /challenges/{id} | Retrieve a single challenge details
[**get_challenges_using_get1**](CampaignsChallengesApi.md#get_challenges_using_get1) | **GET** /challenges | Retrieve a list of challenges
[**update_challenge_activity_using_put**](CampaignsChallengesApi.md#update_challenge_activity_using_put) | **PUT** /challenges/{challenge_id}/activities/{activity_id} | Update a challenge activity
[**update_challenge_template_using_put**](CampaignsChallengesApi.md#update_challenge_template_using_put) | **PUT** /challenges/templates/{id} | Update a challenge template
[**update_challenge_using_put**](CampaignsChallengesApi.md#update_challenge_using_put) | **PUT** /challenges/{id} | Update a challenge&#39;s information


# **create_challenge_activity_using_post**
> ChallengeActivityResource create_challenge_activity_using_post(challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource, validate_settings => $validate_settings)

Create a challenge activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $challenge_id = 789; # int | The challenge id
my $challenge_activity_resource = WWW::SwaggerClient::Object::ChallengeActivityResource->new(); # ChallengeActivityResource | The challenge activity resource object
my $validate_settings = 1; # boolean | Whether to validate the settings being sent against the available settings on the base activity.

eval { 
    my $result = $api_instance->create_challenge_activity_using_post(challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource, validate_settings => $validate_settings);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge_activity_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_id** | **int**| The challenge id | 
 **challenge_activity_resource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 
 **validate_settings** | **boolean**| Whether to validate the settings being sent against the available settings on the base activity. | [optional] [default to false]

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_challenge_template_using_post**
> TemplateResource create_challenge_template_using_post(challenge_template_resource => $challenge_template_resource)

Create a challenge template

Challenge Templates define a type of challenge and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $challenge_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The challenge template resource object

eval { 
    my $result = $api_instance->create_challenge_template_using_post(challenge_template_resource => $challenge_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_template_resource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_challenge_using_post**
> ChallengeResource create_challenge_using_post(challenge_resource => $challenge_resource)

Create a challenge

Challenges do not run on their own.  They must be added to a campaign before events will spawn.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $challenge_resource = WWW::SwaggerClient::Object::ChallengeResource->new(); # ChallengeResource | The challenge resource object

eval { 
    my $result = $api_instance->create_challenge_using_post(challenge_resource => $challenge_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_resource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_activity_using_delete**
> delete_challenge_activity_using_delete(activity_id => $activity_id, challenge_id => $challenge_id)

Delete a challenge activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $activity_id = 789; # int | The activity id
my $challenge_id = 789; # int | The challenge id

eval { 
    $api_instance->delete_challenge_activity_using_delete(activity_id => $activity_id, challenge_id => $challenge_id);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_activity_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **int**| The activity id | 
 **challenge_id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_event_using_delete**
> delete_challenge_event_using_delete(id => $id)

Delete a challenge event

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 789; # int | The challenge event id

eval { 
    $api_instance->delete_challenge_event_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_event_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge event id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_template_using_delete**
> delete_challenge_template_using_delete(id => $id, cascade => $cascade)

Delete a challenge template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_challenge_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_template_using_delete: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_using_delete**
> delete_challenge_using_delete(id => $id)

Delete a challenge

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 789; # int | The challenge id

eval { 
    $api_instance->delete_challenge_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_activities_using_get1**
> PageBareChallengeActivityResource get_activities_using_get1(challenge_id => $challenge_id, size => $size, page => $page, order => $order)

List and search challenge activities

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $challenge_id = 789; # int | The challenge id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_activities_using_get1(challenge_id => $challenge_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_activities_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_id** | **int**| The challenge id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageBareChallengeActivityResource**](PageBareChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_activity_using_get**
> ChallengeActivityResource get_challenge_activity_using_get(activity_id => $activity_id)

Get a single challenge activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $activity_id = 789; # int | The activity id

eval { 
    my $result = $api_instance->get_challenge_activity_using_get(activity_id => $activity_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_activity_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **int**| The activity id | 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_event_using_get**
> ChallengeEventResource get_challenge_event_using_get(id => $id)

Retrieve a single challenge event details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 789; # int | The challenge event id

eval { 
    my $result = $api_instance->get_challenge_event_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_event_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge event id | 

### Return type

[**ChallengeEventResource**](ChallengeEventResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_eventss_using_get**
> PageChallengeEventResource get_challenge_eventss_using_get(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_campaigns => $filter_campaigns, filter_challenge => $filter_challenge, size => $size, page => $page, order => $order)

Retrieve a list of challenge events

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $filter_start_date = 'filter_start_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_end_date = 'filter_end_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_campaigns = 1; # boolean | check only for events from currently running campaigns
my $filter_challenge = 789; # int | check only for events from the challenge specified by id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_eventss_using_get(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_campaigns => $filter_campaigns, filter_challenge => $filter_challenge, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_eventss_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_campaigns** | **boolean**| check only for events from currently running campaigns | [optional] 
 **filter_challenge** | **int**| check only for events from the challenge specified by id | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageChallengeEventResource**](PageChallengeEventResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_template_using_get**
> TemplateResource get_challenge_template_using_get(id => $id)

Get a single challenge template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_challenge_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_template_using_get: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_templates_using_get**
> PageTemplateResource get_challenge_templates_using_get(size => $size, page => $page, order => $order)

List and search challenge templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_using_get**
> ChallengeResource get_challenge_using_get(id => $id)

Retrieve a single challenge details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 789; # int | The challenge id

eval { 
    my $result = $api_instance->get_challenge_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenges_using_get1**
> PageChallengeResource get_challenges_using_get1(filter_template => $filter_template, filter_active_campaign => $filter_active_campaign)

Retrieve a list of challenges

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $filter_template = 1; # boolean | Filter for challenges that are not tied to campaigns (templates)
my $filter_active_campaign = 1; # boolean | Filter for challenges that are tied to active campaigns

eval { 
    my $result = $api_instance->get_challenges_using_get1(filter_template => $filter_template, filter_active_campaign => $filter_active_campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenges_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **boolean**| Filter for challenges that are not tied to campaigns (templates) | [optional] 
 **filter_active_campaign** | **boolean**| Filter for challenges that are tied to active campaigns | [optional] 

### Return type

[**PageChallengeResource**](PageChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge_activity_using_put**
> update_challenge_activity_using_put(activity_id => $activity_id, challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource)

Update a challenge activity

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $activity_id = 789; # int | The activity id
my $challenge_id = 789; # int | The challenge id
my $challenge_activity_resource = WWW::SwaggerClient::Object::ChallengeActivityResource->new(); # ChallengeActivityResource | The challenge activity resource object

eval { 
    $api_instance->update_challenge_activity_using_put(activity_id => $activity_id, challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge_activity_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **int**| The activity id | 
 **challenge_id** | **int**| The challenge id | 
 **challenge_activity_resource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge_template_using_put**
> update_challenge_template_using_put(id => $id, challenge_template_resource => $challenge_template_resource)

Update a challenge template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 'id_example'; # string | The id of the template
my $challenge_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The challenge template resource object

eval { 
    $api_instance->update_challenge_template_using_put(id => $id, challenge_template_resource => $challenge_template_resource);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **challenge_template_resource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge_using_put**
> ChallengeResource update_challenge_using_put(id => $id, challenge_resource => $challenge_resource)

Update a challenge's information

If the challenge is a copy, changes will propagate to all the related challenges

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsChallengesApi->new();
my $id = 789; # int | The challenge id
my $challenge_resource = WWW::SwaggerClient::Object::ChallengeResource->new(); # ChallengeResource | The challenge resource object

eval { 
    my $result = $api_instance->update_challenge_using_put(id => $id, challenge_resource => $challenge_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge id | 
 **challenge_resource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

