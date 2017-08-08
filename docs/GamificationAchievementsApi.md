# KnetikCloud::GamificationAchievementsApi

## Load the API package
```perl
use KnetikCloud::Object::GamificationAchievementsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_achievement**](GamificationAchievementsApi.md#create_achievement) | **POST** /achievements | Create a new achievement definition
[**create_achievement_template**](GamificationAchievementsApi.md#create_achievement_template) | **POST** /achievements/templates | Create an achievement template
[**delete_achievement**](GamificationAchievementsApi.md#delete_achievement) | **DELETE** /achievements/{name} | Delete an achievement definition
[**delete_achievement_template**](GamificationAchievementsApi.md#delete_achievement_template) | **DELETE** /achievements/templates/{id} | Delete an achievement template
[**get_achievement**](GamificationAchievementsApi.md#get_achievement) | **GET** /achievements/{name} | Get a single achievement definition
[**get_achievement_template**](GamificationAchievementsApi.md#get_achievement_template) | **GET** /achievements/templates/{id} | Get a single achievement template
[**get_achievement_templates**](GamificationAchievementsApi.md#get_achievement_templates) | **GET** /achievements/templates | List and search achievement templates
[**get_achievement_triggers**](GamificationAchievementsApi.md#get_achievement_triggers) | **GET** /achievements/triggers | Get the list of triggers that can be used to trigger an achievement progress update
[**get_achievements**](GamificationAchievementsApi.md#get_achievements) | **GET** /achievements | Get all achievement definitions in the system
[**get_derived_achievements**](GamificationAchievementsApi.md#get_derived_achievements) | **GET** /achievements/derived/{name} | Get a list of derived achievements
[**get_user_achievement_progress**](GamificationAchievementsApi.md#get_user_achievement_progress) | **GET** /users/{user_id}/achievements/{achievement_name} | Retrieve progress on a given achievement for a given user
[**get_user_achievements_progress**](GamificationAchievementsApi.md#get_user_achievements_progress) | **GET** /users/{user_id}/achievements | Retrieve progress on achievements for a given user
[**get_users_achievement_progress**](GamificationAchievementsApi.md#get_users_achievement_progress) | **GET** /users/achievements/{achievement_name} | Retrieve progress on a given achievement for all users
[**get_users_achievements_progress**](GamificationAchievementsApi.md#get_users_achievements_progress) | **GET** /users/achievements | Retrieve progress on achievements for all users
[**increment_achievement_progress**](GamificationAchievementsApi.md#increment_achievement_progress) | **POST** /users/{user_id}/achievements/{achievement_name}/progress | Increment an achievement progress record for a user
[**set_achievement_progress**](GamificationAchievementsApi.md#set_achievement_progress) | **PUT** /users/{user_id}/achievements/{achievement_name}/progress | Set an achievement progress record for a user
[**update_achievement**](GamificationAchievementsApi.md#update_achievement) | **PUT** /achievements/{name} | Update an achievement definition
[**update_achievement_template**](GamificationAchievementsApi.md#update_achievement_template) | **PUT** /achievements/templates/{id} | Update an achievement template


# **create_achievement**
> AchievementDefinitionResource create_achievement(achievement => $achievement)

Create a new achievement definition

If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user's achievement status must manually be updated via the API.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $achievement = KnetikCloud::Object::AchievementDefinitionResource->new(); # AchievementDefinitionResource | The achievement definition

eval { 
    my $result = $api_instance->create_achievement(achievement => $achievement);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->create_achievement: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_achievement_template**
> TemplateResource create_achievement_template(template => $template)

Create an achievement template

Achievement templates define a type of achievement and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $template = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The achievement template to be created

eval { 
    my $result = $api_instance->create_achievement_template(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->create_achievement_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The achievement template to be created | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_achievement**
> delete_achievement(name => $name)

Delete an achievement definition

Will also disable the associated generated rule, if any.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The name of the achievement

eval { 
    $api_instance->delete_achievement(name => $name);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->delete_achievement: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the achievement | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_achievement_template**
> delete_achievement_template(id => $id, cascade => $cascade)

Delete an achievement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_achievement_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->delete_achievement_template: $@\n";
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

# **get_achievement**
> AchievementDefinitionResource get_achievement(name => $name)

Get a single achievement definition

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The name of the achievement

eval { 
    my $result = $api_instance->get_achievement(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the achievement | 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_achievement_template**
> TemplateResource get_achievement_template(id => $id)

Get a single achievement template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_achievement_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement_template: $@\n";
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

# **get_achievement_templates**
> PageResourceTemplateResource get_achievement_templates(size => $size, page => $page, order => $order)

List and search achievement templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_achievement_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement_templates: $@\n";
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

# **get_achievement_triggers**
> ARRAY[BreTriggerResource] get_achievement_triggers()

Get the list of triggers that can be used to trigger an achievement progress update

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);


eval { 
    my $result = $api_instance->get_achievement_triggers();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement_triggers: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BreTriggerResource]**](BreTriggerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_achievements**
> PageResourceAchievementDefinitionResource get_achievements(filter_tagset => $filter_tagset, filter_name => $filter_name, filter_hidden => $filter_hidden, size => $size, page => $page, order => $order, filter_derived => $filter_derived)

Get all achievement definitions in the system

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_tagset = 'filter_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_name = 'filter_name_example'; # string | Filter for achievements whose name contains a string
my $filter_hidden = 1; # boolean | Filter for achievements that are hidden or not
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
my $filter_derived = 1; # boolean | Filter for achievements that are derived from other services

eval { 
    my $result = $api_instance->get_achievements(filter_tagset => $filter_tagset, filter_name => $filter_name, filter_hidden => $filter_hidden, size => $size, page => $page, order => $order, filter_derived => $filter_derived);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievements: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **filter_hidden** | **boolean**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]
 **filter_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] [default to false]

### Return type

[**PageResourceAchievementDefinitionResource**](PageResourceAchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_derived_achievements**
> ARRAY[AchievementDefinitionResource] get_derived_achievements(name => $name)

Get a list of derived achievements

Used by other services that depend on achievements

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The name of the derived achievement

eval { 
    my $result = $api_instance->get_derived_achievements(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_derived_achievements: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the derived achievement | 

### Return type

[**ARRAY[AchievementDefinitionResource]**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_achievement_progress**
> UserAchievementGroupResource get_user_achievement_progress(user_id => $user_id, achievement_name => $achievement_name)

Retrieve progress on a given achievement for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The user's id
my $achievement_name = 'achievement_name_example'; # string | The achievement's name

eval { 
    my $result = $api_instance->get_user_achievement_progress(user_id => $user_id, achievement_name => $achievement_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_user_achievement_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **achievement_name** | **string**| The achievement&#39;s name | 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_achievements_progress**
> PageResourceUserAchievementGroupResource get_user_achievements_progress(user_id => $user_id, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, size => $size, page => $page)

Retrieve progress on achievements for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The user's id
my $filter_achievement_derived = 1; # boolean | Filter for achievements that are derived from other services
my $filter_achievement_tagset = 'filter_achievement_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_achievement_name = 'filter_achievement_name_example'; # string | Filter for achievements whose name contains a string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_achievements_progress(user_id => $user_id, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_user_achievements_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **filter_achievement_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users_achievement_progress**
> PageResourceUserAchievementGroupResource get_users_achievement_progress(achievement_name => $achievement_name, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, size => $size, page => $page)

Retrieve progress on a given achievement for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $achievement_name = 'achievement_name_example'; # string | The achievement's name
my $filter_achievement_derived = 1; # boolean | Filter for achievements that are derived from other services
my $filter_achievement_tagset = 'filter_achievement_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_achievement_name = 'filter_achievement_name_example'; # string | Filter for achievements whose name contains a string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_users_achievement_progress(achievement_name => $achievement_name, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_users_achievement_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement_name** | **string**| The achievement&#39;s name | 
 **filter_achievement_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users_achievements_progress**
> PageResourceUserAchievementGroupResource get_users_achievements_progress(filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, size => $size, page => $page)

Retrieve progress on achievements for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_achievement_derived = 1; # boolean | Filter for achievements that are derived from other services
my $filter_achievement_tagset = 'filter_achievement_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_achievement_name = 'filter_achievement_name_example'; # string | Filter for achievements whose name contains a string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_users_achievements_progress(filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_users_achievements_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_achievement_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **increment_achievement_progress**
> UserAchievementGroupResource increment_achievement_progress(user_id => $user_id, achievement_name => $achievement_name, progress => $progress)

Increment an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated and the provided value added to the existing progress. May be negative. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The user's id
my $achievement_name = 'achievement_name_example'; # string | The achievement's name
my $progress = KnetikCloud::Object::IntWrapper->new(); # IntWrapper | The amount to add to the progress value

eval { 
    my $result = $api_instance->increment_achievement_progress(user_id => $user_id, achievement_name => $achievement_name, progress => $progress);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->increment_achievement_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **achievement_name** | **string**| The achievement&#39;s name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The amount to add to the progress value | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_achievement_progress**
> UserAchievementGroupResource set_achievement_progress(user_id => $user_id, achievement_name => $achievement_name, progress => $progress)

Set an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated and progress set to the provided value. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The user's id
my $achievement_name = 'achievement_name_example'; # string | The achievement's name
my $progress = KnetikCloud::Object::IntWrapper->new(); # IntWrapper | The new progress value

eval { 
    my $result = $api_instance->set_achievement_progress(user_id => $user_id, achievement_name => $achievement_name, progress => $progress);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->set_achievement_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **achievement_name** | **string**| The achievement&#39;s name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The new progress value | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_achievement**
> AchievementDefinitionResource update_achievement(name => $name, achievement => $achievement)

Update an achievement definition

The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The name of the achievement
my $achievement = KnetikCloud::Object::AchievementDefinitionResource->new(); # AchievementDefinitionResource | The achievement definition

eval { 
    my $result = $api_instance->update_achievement(name => $name, achievement => $achievement);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->update_achievement: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the achievement | 
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_achievement_template**
> TemplateResource update_achievement_template(id => $id, template => $template)

Update an achievement template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::GamificationAchievementsApi;
my $api_instance = KnetikCloud::GamificationAchievementsApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $template = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The updated template

eval { 
    my $result = $api_instance->update_achievement_template(id => $id, template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->update_achievement_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

