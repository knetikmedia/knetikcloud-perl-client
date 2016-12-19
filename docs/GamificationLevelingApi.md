# WWW::SwaggerClient::GamificationLevelingApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GamificationLevelingApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_user_level_experience_using_put**](GamificationLevelingApi.md#change_user_level_experience_using_put) | **PUT** /users/{user_id}/leveling/{name} | Update or create a leveling progress record for a user
[**create_level_using_post**](GamificationLevelingApi.md#create_level_using_post) | **POST** /leveling | Create a level schema
[**delete_level_using_delete**](GamificationLevelingApi.md#delete_level_using_delete) | **DELETE** /leveling/{name} | Delete a level
[**get_available_triggers_using_get1**](GamificationLevelingApi.md#get_available_triggers_using_get1) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**get_level_using_get**](GamificationLevelingApi.md#get_level_using_get) | **GET** /leveling/{name} | Retrieve a particular level
[**get_levels_using_get**](GamificationLevelingApi.md#get_levels_using_get) | **GET** /leveling | List and search levels
[**get_user_level_using_get**](GamificationLevelingApi.md#get_user_level_using_get) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**get_user_levels_using_get**](GamificationLevelingApi.md#get_user_levels_using_get) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**update_level_using_put**](GamificationLevelingApi.md#update_level_using_put) | **PUT** /leveling/{name} | Update a level


# **change_user_level_experience_using_put**
> change_user_level_experience_using_put(user_id => $user_id, name => $name, progress => $progress)

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
    $api_instance->change_user_level_experience_using_put(user_id => $user_id, name => $name, progress => $progress);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->change_user_level_experience_using_put: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_level_using_post**
> LevelingResource create_level_using_post(level => $level)

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
    my $result = $api_instance->create_level_using_post(level => $level);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->create_level_using_post: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_level_using_delete**
> delete_level_using_delete(name => $name)

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
    $api_instance->delete_level_using_delete(name => $name);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->delete_level_using_delete: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_available_triggers_using_get1**
> ARRAY[BreTriggerResource] get_available_triggers_using_get1()

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
    my $result = $api_instance->get_available_triggers_using_get1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_available_triggers_using_get1: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_level_using_get**
> LevelingResource get_level_using_get(name => $name)

Retrieve a particular level

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
    my $result = $api_instance->get_level_using_get(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_level_using_get: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_levels_using_get**
> PageLevelingResource get_levels_using_get(filter_name => $filter_name, size => $size, page => $page, order => $order)

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
    my $result = $api_instance->get_levels_using_get(filter_name => $filter_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_levels_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **string**| Filter for level schemas whose name contains a given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageLevelingResource**](PageLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_level_using_get**
> UserLevelingResource get_user_level_using_get(user_id => $user_id, name => $name)

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
    my $result = $api_instance->get_user_level_using_get(user_id => $user_id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_user_level_using_get: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_levels_using_get**
> PageUserLevelingResource get_user_levels_using_get(user_id => $user_id)

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
    my $result = $api_instance->get_user_levels_using_get(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->get_user_levels_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 

### Return type

[**PageUserLevelingResource**](PageUserLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_level_using_put**
> update_level_using_put(name => $name, new_level => $new_level)

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
    $api_instance->update_level_using_put(name => $name, new_level => $new_level);
};
if ($@) {
    warn "Exception when calling GamificationLevelingApi->update_level_using_put: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

