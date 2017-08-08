# KnetikCloud::CampaignsChallengesApi

## Load the API package
```perl
use KnetikCloud::Object::CampaignsChallengesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_challenge**](CampaignsChallengesApi.md#create_challenge) | **POST** /challenges | Create a challenge
[**create_challenge_activity**](CampaignsChallengesApi.md#create_challenge_activity) | **POST** /challenges/{challenge_id}/activities | Create a challenge activity
[**create_challenge_activity_template**](CampaignsChallengesApi.md#create_challenge_activity_template) | **POST** /challenge-activities/templates | Create a challenge activity template
[**create_challenge_template**](CampaignsChallengesApi.md#create_challenge_template) | **POST** /challenges/templates | Create a challenge template
[**delete_challenge**](CampaignsChallengesApi.md#delete_challenge) | **DELETE** /challenges/{id} | Delete a challenge
[**delete_challenge_activity**](CampaignsChallengesApi.md#delete_challenge_activity) | **DELETE** /challenges/{challenge_id}/activities/{id} | Delete a challenge activity
[**delete_challenge_activity_template**](CampaignsChallengesApi.md#delete_challenge_activity_template) | **DELETE** /challenge-activities/templates/{id} | Delete a challenge activity template
[**delete_challenge_event**](CampaignsChallengesApi.md#delete_challenge_event) | **DELETE** /challenges/events/{id} | Delete a challenge event
[**delete_challenge_template**](CampaignsChallengesApi.md#delete_challenge_template) | **DELETE** /challenges/templates/{id} | Delete a challenge template
[**get_challenge**](CampaignsChallengesApi.md#get_challenge) | **GET** /challenges/{id} | Retrieve a challenge
[**get_challenge_activities**](CampaignsChallengesApi.md#get_challenge_activities) | **GET** /challenges/{challenge_id}/activities | List and search challenge activities
[**get_challenge_activity**](CampaignsChallengesApi.md#get_challenge_activity) | **GET** /challenges/{challenge_id}/activities/{id} | Get a single challenge activity
[**get_challenge_activity_template**](CampaignsChallengesApi.md#get_challenge_activity_template) | **GET** /challenge-activities/templates/{id} | Get a single challenge activity template
[**get_challenge_activity_templates**](CampaignsChallengesApi.md#get_challenge_activity_templates) | **GET** /challenge-activities/templates | List and search challenge activity templates
[**get_challenge_event**](CampaignsChallengesApi.md#get_challenge_event) | **GET** /challenges/events/{id} | Retrieve a single challenge event details
[**get_challenge_events**](CampaignsChallengesApi.md#get_challenge_events) | **GET** /challenges/events | Retrieve a list of challenge events
[**get_challenge_template**](CampaignsChallengesApi.md#get_challenge_template) | **GET** /challenges/templates/{id} | Get a single challenge template
[**get_challenge_templates**](CampaignsChallengesApi.md#get_challenge_templates) | **GET** /challenges/templates | List and search challenge templates
[**get_challenges**](CampaignsChallengesApi.md#get_challenges) | **GET** /challenges | Retrieve a list of challenges
[**update_challenge**](CampaignsChallengesApi.md#update_challenge) | **PUT** /challenges/{id} | Update a challenge
[**update_challenge_activity**](CampaignsChallengesApi.md#update_challenge_activity) | **PUT** /challenges/{challenge_id}/activities/{id} | Update a challenge activity
[**update_challenge_activity_template**](CampaignsChallengesApi.md#update_challenge_activity_template) | **PUT** /challenge-activities/templates/{id} | Update an challenge activity template
[**update_challenge_template**](CampaignsChallengesApi.md#update_challenge_template) | **PUT** /challenges/templates/{id} | Update a challenge template


# **create_challenge**
> ChallengeResource create_challenge(challenge_resource => $challenge_resource)

Create a challenge

Challenges do not run on their own.  They must be added to a campaign before events will spawn.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $challenge_resource = KnetikCloud::Object::ChallengeResource->new(); # ChallengeResource | The challenge resource object

eval { 
    my $result = $api_instance->create_challenge(challenge_resource => $challenge_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_challenge_activity**
> ChallengeActivityResource create_challenge_activity(challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource, validate_settings => $validate_settings)

Create a challenge activity

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $challenge_id = 789; # int | The challenge id
my $challenge_activity_resource = KnetikCloud::Object::ChallengeActivityResource->new(); # ChallengeActivityResource | The challenge activity resource object
my $validate_settings = 1; # boolean | Whether to validate the settings being sent against the available settings on the base activity.

eval { 
    my $result = $api_instance->create_challenge_activity(challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource, validate_settings => $validate_settings);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge_activity: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_challenge_activity_template**
> TemplateResource create_challenge_activity_template(challenge_activity_template_resource => $challenge_activity_template_resource)

Create a challenge activity template

Challenge Activity Templates define a type of challenge activity and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $challenge_activity_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The challengeActivity template resource object

eval { 
    my $result = $api_instance->create_challenge_activity_template(challenge_activity_template_resource => $challenge_activity_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge_activity_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_activity_template_resource** | [**TemplateResource**](TemplateResource.md)| The challengeActivity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_challenge_template**
> TemplateResource create_challenge_template(challenge_template_resource => $challenge_template_resource)

Create a challenge template

Challenge Templates define a type of challenge and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $challenge_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The challenge template resource object

eval { 
    my $result = $api_instance->create_challenge_template(challenge_template_resource => $challenge_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->create_challenge_template: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge**
> delete_challenge(id => $id)

Delete a challenge

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The challenge id

eval { 
    $api_instance->delete_challenge(id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_activity**
> delete_challenge_activity(id => $id, challenge_id => $challenge_id)

Delete a challenge activity

A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The challenge_activity id
my $challenge_id = 789; # int | The challenge id

eval { 
    $api_instance->delete_challenge_activity(id => $id, challenge_id => $challenge_id);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge_activity id | 
 **challenge_id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_activity_template**
> delete_challenge_activity_template(id => $id, cascade => $cascade)

Delete a challenge activity template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_challenge_activity_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_activity_template: $@\n";
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

# **delete_challenge_event**
> delete_challenge_event(id => $id)

Delete a challenge event

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The challenge event id

eval { 
    $api_instance->delete_challenge_event(id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_event: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_challenge_template**
> delete_challenge_template(id => $id, cascade => $cascade)

Delete a challenge template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_challenge_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->delete_challenge_template: $@\n";
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

# **get_challenge**
> ChallengeResource get_challenge(id => $id)

Retrieve a challenge

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(
);

my $id = 789; # int | The challenge id

eval { 
    my $result = $api_instance->get_challenge(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_activities**
> PageResourceBareChallengeActivityResource get_challenge_activities(challenge_id => $challenge_id, size => $size, page => $page, order => $order)

List and search challenge activities

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(
);

my $challenge_id = 789; # int | The challenge id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_activities(challenge_id => $challenge_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_activities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_id** | **int**| The challenge id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceBareChallengeActivityResource**](PageResourceBareChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_activity**
> ChallengeActivityResource get_challenge_activity(id => $id, challenge_id => $challenge_id)

Get a single challenge activity

A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(
);

my $id = 789; # int | The challenge_activity id
my $challenge_id = 789; # int | The challenge id

eval { 
    my $result = $api_instance->get_challenge_activity(id => $id, challenge_id => $challenge_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge_activity id | 
 **challenge_id** | **int**| The challenge id | 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_activity_template**
> TemplateResource get_challenge_activity_template(id => $id)

Get a single challenge activity template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_challenge_activity_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_activity_template: $@\n";
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

# **get_challenge_activity_templates**
> PageResourceTemplateResource get_challenge_activity_templates(size => $size, page => $page, order => $order)

List and search challenge activity templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_activity_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_activity_templates: $@\n";
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

# **get_challenge_event**
> ChallengeEventResource get_challenge_event(id => $id)

Retrieve a single challenge event details

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(
);

my $id = 789; # int | The challenge event id

eval { 
    my $result = $api_instance->get_challenge_event(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_event: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_events**
> PageResourceChallengeEventResource get_challenge_events(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_campaigns => $filter_campaigns, filter_challenge => $filter_challenge, size => $size, page => $page, order => $order)

Retrieve a list of challenge events

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(
);

my $filter_start_date = 'filter_start_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_end_date = 'filter_end_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_campaigns = 1; # boolean | check only for events from currently running campaigns
my $filter_challenge = 789; # int | check only for events from the challenge specified by id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_events(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_campaigns => $filter_campaigns, filter_challenge => $filter_challenge, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_events: $@\n";
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
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceChallengeEventResource**](PageResourceChallengeEventResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_template**
> TemplateResource get_challenge_template(id => $id)

Get a single challenge template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_challenge_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_template: $@\n";
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

# **get_challenge_templates**
> PageResourceTemplateResource get_challenge_templates(size => $size, page => $page, order => $order)

List and search challenge templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenge_templates: $@\n";
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

# **get_challenges**
> PageResourceChallengeResource get_challenges(filter_template => $filter_template, filter_active_campaign => $filter_active_campaign, filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, size => $size, page => $page, order => $order)

Retrieve a list of challenges

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(
);

my $filter_template = 1; # boolean | Filter for challenges that are not tied to campaigns (templates)
my $filter_active_campaign = 1; # boolean | Filter for challenges that are tied to active campaigns
my $filter_start_date = 'filter_start_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the challenge start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_end_date = 'filter_end_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the challenge end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenges(filter_template => $filter_template, filter_active_campaign => $filter_active_campaign, filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->get_challenges: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **boolean**| Filter for challenges that are not tied to campaigns (templates) | [optional] 
 **filter_active_campaign** | **boolean**| Filter for challenges that are tied to active campaigns | [optional] 
 **filter_start_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the challenge start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the challenge end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceChallengeResource**](PageResourceChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge**
> ChallengeResource update_challenge(id => $id, challenge_resource => $challenge_resource)

Update a challenge

If the challenge is a copy, changes will propagate to all the related challenges

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The challenge id
my $challenge_resource = KnetikCloud::Object::ChallengeResource->new(); # ChallengeResource | The challenge resource object

eval { 
    my $result = $api_instance->update_challenge(id => $id, challenge_resource => $challenge_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge_activity**
> ChallengeActivityResource update_challenge_activity(id => $id, challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource)

Update a challenge activity

A challenge can have multiple instances of the same activity and thus the id used is of the specific entry within the challenge

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The challenge_activity id
my $challenge_id = 789; # int | The challenge id
my $challenge_activity_resource = KnetikCloud::Object::ChallengeActivityResource->new(); # ChallengeActivityResource | The challenge activity resource object

eval { 
    my $result = $api_instance->update_challenge_activity(id => $id, challenge_id => $challenge_id, challenge_activity_resource => $challenge_activity_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The challenge_activity id | 
 **challenge_id** | **int**| The challenge id | 
 **challenge_activity_resource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge_activity_template**
> TemplateResource update_challenge_activity_template(id => $id, challenge_activity_template_resource => $challenge_activity_template_resource)

Update an challenge activity template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $challenge_activity_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The challengeActivity template resource object

eval { 
    my $result = $api_instance->update_challenge_activity_template(id => $id, challenge_activity_template_resource => $challenge_activity_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge_activity_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **challenge_activity_template_resource** | [**TemplateResource**](TemplateResource.md)| The challengeActivity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_challenge_template**
> TemplateResource update_challenge_template(id => $id, challenge_template_resource => $challenge_template_resource)

Update a challenge template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CampaignsChallengesApi;
my $api_instance = KnetikCloud::CampaignsChallengesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $challenge_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The challenge template resource object

eval { 
    my $result = $api_instance->update_challenge_template(id => $id, challenge_template_resource => $challenge_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsChallengesApi->update_challenge_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **challenge_template_resource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

