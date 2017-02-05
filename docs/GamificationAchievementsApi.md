# WWW::SwaggerClient::GamificationAchievementsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GamificationAchievementsApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_achievement_using_post**](GamificationAchievementsApi.md#create_achievement_using_post) | **POST** /achievements | Create a new achievement definition
[**create_template_using_post**](GamificationAchievementsApi.md#create_template_using_post) | **POST** /achievements/templates | Create an achievement template
[**delete_achievement_template_using_delete**](GamificationAchievementsApi.md#delete_achievement_template_using_delete) | **DELETE** /achievements/templates/{id} | Delete an achievement template
[**delete_achievement_using_delete**](GamificationAchievementsApi.md#delete_achievement_using_delete) | **DELETE** /achievements/{name} | Delete an achievement definition
[**find_all_by_group_name_using_get**](GamificationAchievementsApi.md#find_all_by_group_name_using_get) | **GET** /achievements/derived/{name} | Get a list of derived achievements
[**get_achievement_template_using_get**](GamificationAchievementsApi.md#get_achievement_template_using_get) | **GET** /achievements/templates/{id} | Get a single achievement template
[**get_achievement_templates_using_get**](GamificationAchievementsApi.md#get_achievement_templates_using_get) | **GET** /achievements/templates | List and search achievement templates
[**get_achievement_using_get**](GamificationAchievementsApi.md#get_achievement_using_get) | **GET** /achievements/{name} | Get a single achievement definition
[**get_achievements_using_get**](GamificationAchievementsApi.md#get_achievements_using_get) | **GET** /achievements | Get all achievement definitions in the system
[**get_all_user_progress_for_achievement_using_get**](GamificationAchievementsApi.md#get_all_user_progress_for_achievement_using_get) | **GET** /users/achievements/{achievement_name} | Retrieve progress on a given achievement for all users
[**get_all_user_progress_using_get**](GamificationAchievementsApi.md#get_all_user_progress_using_get) | **GET** /users/achievements | Retrieve progress on achievements for all users
[**get_available_triggers_using_get**](GamificationAchievementsApi.md#get_available_triggers_using_get) | **GET** /achievements/triggers | Get the list of triggers that can be used to trigger an achievement progress update
[**get_user_progress_for_achievement_using_get**](GamificationAchievementsApi.md#get_user_progress_for_achievement_using_get) | **GET** /users/{user_id}/achievements/{achievement_name} | Retrieve progress on a given achievement for a given user
[**get_user_progress_using_get**](GamificationAchievementsApi.md#get_user_progress_using_get) | **GET** /users/{user_id}/achievements | Retrieve progress on achievements for a given user
[**update_achievement_using_put**](GamificationAchievementsApi.md#update_achievement_using_put) | **PUT** /achievements/{name} | Update an achievement definition
[**update_progress_using_put**](GamificationAchievementsApi.md#update_progress_using_put) | **PUT** /users/{user_id}/achievements/{achievement_name} | Update or create an achievement progress record for a user
[**update_template_using_put**](GamificationAchievementsApi.md#update_template_using_put) | **PUT** /achievements/templates/{id} | Update an achievement template


# **create_achievement_using_post**
> AchievementDefinitionResource create_achievement_using_post(achievement => $achievement)

Create a new achievement definition

If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user's achievement status must manually be updated via the API.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $achievement = WWW::SwaggerClient::Object::AchievementDefinitionResource->new(); # AchievementDefinitionResource | The achievement definition

eval { 
    my $result = $api_instance->create_achievement_using_post(achievement => $achievement);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->create_achievement_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_template_using_post**
> TemplateResource create_template_using_post(template => $template)

Create an achievement template

Achievement templates define a type of achievement and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $template = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The achievement template to be created

eval { 
    my $result = $api_instance->create_template_using_post(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->create_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The achievement template to be created | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_achievement_template_using_delete**
> delete_achievement_template_using_delete(id => $id, cascade => $cascade)

Delete an achievement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_achievement_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->delete_achievement_template_using_delete: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_achievement_using_delete**
> delete_achievement_using_delete(name => $name)

Delete an achievement definition

Will also disable the associated generated rule, if any.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $name = 'name_example'; # string | The name of the achievement

eval { 
    $api_instance->delete_achievement_using_delete(name => $name);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->delete_achievement_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the achievement | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_all_by_group_name_using_get**
> ARRAY[AchievementDefinitionResource] find_all_by_group_name_using_get(name => $name)

Get a list of derived achievements

Used by other services that depend on achievements

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $name = 'name_example'; # string | The name of the derived achievement

eval { 
    my $result = $api_instance->find_all_by_group_name_using_get(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->find_all_by_group_name_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the derived achievement | 

### Return type

[**ARRAY[AchievementDefinitionResource]**](AchievementDefinitionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_achievement_template_using_get**
> TemplateResource get_achievement_template_using_get(id => $id)

Get a single achievement template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_achievement_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_achievement_templates_using_get**
> PageResourceTemplateResource get_achievement_templates_using_get(size => $size, page => $page, order => $order)

List and search achievement templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_achievement_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement_templates_using_get: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_achievement_using_get**
> AchievementDefinitionResource get_achievement_using_get(name => $name)

Get a single achievement definition

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $name = 'name_example'; # string | The name of the achievement

eval { 
    my $result = $api_instance->get_achievement_using_get(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievement_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the achievement | 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_achievements_using_get**
> PageResourceAchievementDefinitionResource get_achievements_using_get(filter_tagset => $filter_tagset, filter_name => $filter_name, filter_hidden => $filter_hidden, filter_derived => $filter_derived, size => $size, page => $page, order => $order)

Get all achievement definitions in the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $filter_tagset = 'filter_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_name = 'filter_name_example'; # string | Filter for achievements whose name contains a string
my $filter_hidden = 1; # boolean | Filter for achievements that are hidden or not
my $filter_derived = 1; # boolean | Filter for achievements that are derived from other services
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_achievements_using_get(filter_tagset => $filter_tagset, filter_name => $filter_name, filter_hidden => $filter_hidden, filter_derived => $filter_derived, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_achievements_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **filter_hidden** | **boolean**| Filter for achievements that are hidden or not | [optional] 
 **filter_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceAchievementDefinitionResource**](PageResourceAchievementDefinitionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_user_progress_for_achievement_using_get**
> PageResourceUserAchievementGroupResource get_all_user_progress_for_achievement_using_get(achievement_name => $achievement_name, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page)

Retrieve progress on a given achievement for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $achievement_name = 'achievement_name_example'; # string | The achievement's name
my $filter_achievement_derived = 1; # boolean | Filter for achievements that are derived from other services
my $filter_achievement_tagset = 'filter_achievement_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_achievement_hidden = 1; # boolean | Filter for achievements that are hidden or not
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_all_user_progress_for_achievement_using_get(achievement_name => $achievement_name, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_all_user_progress_for_achievement_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement_name** | **string**| The achievement&#39;s name | 
 **filter_achievement_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_hidden** | **boolean**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_user_progress_using_get**
> PageResourceUserAchievementGroupResource get_all_user_progress_using_get(filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page)

Retrieve progress on achievements for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $filter_achievement_derived = 1; # boolean | Filter for achievements that are derived from other services
my $filter_achievement_tagset = 'filter_achievement_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_achievement_name = 'filter_achievement_name_example'; # string | Filter for achievements whose name contains a string
my $filter_achievement_hidden = 1; # boolean | Filter for achievements that are hidden or not
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_all_user_progress_using_get(filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_all_user_progress_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_achievement_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **filter_achievement_hidden** | **boolean**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_available_triggers_using_get**
> ARRAY[BreTriggerResource] get_available_triggers_using_get()

Get the list of triggers that can be used to trigger an achievement progress update

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();

eval { 
    my $result = $api_instance->get_available_triggers_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_available_triggers_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BreTriggerResource]**](BreTriggerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_progress_for_achievement_using_get**
> UserAchievementGroupResource get_user_progress_for_achievement_using_get(user_id => $user_id, achievement_name => $achievement_name)

Retrieve progress on a given achievement for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $user_id = 56; # int | The user's id
my $achievement_name = 'achievement_name_example'; # string | The achievement's name

eval { 
    my $result = $api_instance->get_user_progress_for_achievement_using_get(user_id => $user_id, achievement_name => $achievement_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_user_progress_for_achievement_using_get: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_progress_using_get**
> PageResourceUserAchievementGroupResource get_user_progress_using_get(user_id => $user_id, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page)

Retrieve progress on achievements for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $user_id = 56; # int | The user's id
my $filter_achievement_derived = 1; # boolean | Filter for achievements that are derived from other services
my $filter_achievement_tagset = 'filter_achievement_tagset_example'; # string | Filter for achievements with specified tags (separated by comma)
my $filter_achievement_name = 'filter_achievement_name_example'; # string | Filter for achievements whose name contains a string
my $filter_achievement_hidden = 1; # boolean | Filter for achievements that are hidden or not
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_progress_using_get(user_id => $user_id, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->get_user_progress_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **filter_achievement_derived** | **boolean**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **string**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **string**| Filter for achievements whose name contains a string | [optional] 
 **filter_achievement_hidden** | **boolean**| Filter for achievements that are hidden or not | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_achievement_using_put**
> update_achievement_using_put(name => $name, achievement => $achievement)

Update an achievement definition

The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $name = 'name_example'; # string | The name of the achievement
my $achievement = WWW::SwaggerClient::Object::AchievementDefinitionResource->new(); # AchievementDefinitionResource | The achievement definition

eval { 
    $api_instance->update_achievement_using_put(name => $name, achievement => $achievement);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->update_achievement_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the achievement | 
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_progress_using_put**
> UserAchievementGroupResource update_progress_using_put(user_id => $user_id, achievement_name => $achievement_name, request => $request)

Update or create an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $user_id = 56; # int | The user's id
my $achievement_name = 'achievement_name_example'; # string | The achievement's name
my $request = WWW::SwaggerClient::Object::AchievementProgressUpdateRequest->new(); # AchievementProgressUpdateRequest | The progress update details

eval { 
    my $result = $api_instance->update_progress_using_put(user_id => $user_id, achievement_name => $achievement_name, request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->update_progress_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user&#39;s id | 
 **achievement_name** | **string**| The achievement&#39;s name | 
 **request** | [**AchievementProgressUpdateRequest**](AchievementProgressUpdateRequest.md)| The progress update details | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_template_using_put**
> update_template_using_put(id => $id, template => $template)

Update an achievement template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationAchievementsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationAchievementsApi->new();
my $id = 'id_example'; # string | The id of the template
my $template = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The updated template

eval { 
    $api_instance->update_template_using_put(id => $id, template => $template);
};
if ($@) {
    warn "Exception when calling GamificationAchievementsApi->update_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

