# WWW::SwaggerClient::GamificationLevelingApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GamificationLevelingApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_level**](GamificationLevelingApi.md#create_level) | **POST** /leveling | Create a level schema
[**delete_level**](GamificationLevelingApi.md#delete_level) | **DELETE** /leveling/{name} | Delete a level
[**get_level**](GamificationLevelingApi.md#get_level) | **GET** /leveling/{name} | Retrieve a level
[**get_level_triggers**](GamificationLevelingApi.md#get_level_triggers) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**get_levels**](GamificationLevelingApi.md#get_levels) | **GET** /leveling | List and search levels
[**get_user_level**](GamificationLevelingApi.md#get_user_level) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**get_user_levels**](GamificationLevelingApi.md#get_user_levels) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**update_level**](GamificationLevelingApi.md#update_level) | **PUT** /leveling/{name} | Update a level
[**update_user_level**](GamificationLevelingApi.md#update_user_level) | **PUT** /users/{user_id}/leveling/{name} | Update or create a leveling progress record for a user


# **create_level**
> LevelingResource create_level(level => $level)

Create a level schema

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $level = WWW::SwaggerClient::Object::LevelingResource->new(); # LevelingResource | The level schema definition

eval { 
    my $result = $api_instance->create_level(level => $level);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->create_level: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_level**
> delete_level(name => $name)

Delete a level

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $name = 'name_example'; # string | The level schema name

eval { 
    $api_instance->delete_level(name => $name);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->delete_level: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The level schema name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_level**
> LevelingResource get_level(name => $name)

Retrieve a level

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $name = 'name_example'; # string | The level schema name

eval { 
    my $result = $api_instance->get_level(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_level: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The level schema name | 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_level_triggers**
> ARRAY[BreTriggerResource] get_level_triggers()

Get the list of triggers that can be used to trigger a leveling progress update

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();

eval { 
    my $result = $api_instance->get_level_triggers();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_level_triggers: $@\n";
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

# **get_levels**
> PageResourceLevelingResource get_levels(filter_name => $filter_name, size => $size, page => $page, order => $order)

List and search levels

Get a list of levels schemas with optional filtering

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $filter_name = 'filter_name_example'; # string | Filter for level schemas whose name contains a given string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_levels(filter_name => $filter_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_levels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **string**| Filter for level schemas whose name contains a given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceLevelingResource**](PageResourceLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_level**
> UserLevelingResource get_user_level(user_id => $user_id, name => $name)

Get a user's progress for a given level schema

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $user_id = 56; # int | The id of the user
my $name = 'name_example'; # string | The level schema name

eval { 
    my $result = $api_instance->get_user_level(user_id => $user_id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_user_level: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **name** | **string**| The level schema name | 

### Return type

[**UserLevelingResource**](UserLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_levels**
> PageResourceUserLevelingResource get_user_levels(user_id => $user_id)

Get a user's progress for all level schemas

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $user_id = 56; # int | The id of the user

eval { 
    my $result = $api_instance->get_user_levels(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_user_levels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 

### Return type

[**PageResourceUserLevelingResource**](PageResourceUserLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_level**
> update_level(name => $name, new_level => $new_level)

Update a level

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $name = 'name_example'; # string | The level schema name
my $new_level = WWW::SwaggerClient::Object::LevelingResource->new(); # LevelingResource | The level schema definition

eval { 
    $api_instance->update_level(name => $name, new_level => $new_level);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->update_level: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The level schema name | 
 **new_level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_level**
> update_user_level(user_id => $user_id, name => $name, progress => $progress)

Update or create a leveling progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLevelingApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::GamificationLevelingApi->new();
my $user_id = 56; # int | The id of the user
my $name = 'name_example'; # string | The level schema name
my $progress = WWW::SwaggerClient::Object::int->new(); # int | The current progress amount

eval { 
    $api_instance->update_user_level(user_id => $user_id, name => $name, progress => $progress);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->update_user_level: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **name** | **string**| The level schema name | 
 **progress** | **int**| The current progress amount | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

