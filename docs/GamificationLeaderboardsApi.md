# WWW::SwaggerClient::GamificationLeaderboardsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GamificationLeaderboardsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_leaderboard_using_get**](GamificationLeaderboardsApi.md#get_leaderboard_using_get) | **GET** /leaderboards/{context_type}/{context_id} | Retrieves leaderboard details and paginated entries
[**get_strategies_using_get**](GamificationLeaderboardsApi.md#get_strategies_using_get) | **GET** /leaderboards/strategies | Get a list of available leaderboard strategy names
[**get_user_rank_using_get**](GamificationLeaderboardsApi.md#get_user_rank_using_get) | **GET** /leaderboards/{context_type}/{context_id}/users/{id}/rank | Retrieves a specific user entry with rank


# **get_leaderboard_using_get**
> LeaderboardResource get_leaderboard_using_get(context_type => $context_type, context_id => $context_id, size => $size, page => $page)

Retrieves leaderboard details and paginated entries

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLeaderboardsApi;

my $api_instance = WWW::SwaggerClient::GamificationLeaderboardsApi->new();
my $context_type = 'context_type_example'; # string | The context type for the leaderboard
my $context_id = 'context_id_example'; # string | The context id for the leaderboard
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_leaderboard_using_get(context_type => $context_type, context_id => $context_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLeaderboardsApi->get_leaderboard_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_type** | **string**| The context type for the leaderboard | 
 **context_id** | **string**| The context id for the leaderboard | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**LeaderboardResource**](LeaderboardResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_strategies_using_get**
> ARRAY[string] get_strategies_using_get()

Get a list of available leaderboard strategy names

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLeaderboardsApi;

my $api_instance = WWW::SwaggerClient::GamificationLeaderboardsApi->new();

eval { 
    my $result = $api_instance->get_strategies_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLeaderboardsApi->get_strategies_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ARRAY[string]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_rank_using_get**
> LeaderboardEntryResource get_user_rank_using_get(context_type => $context_type, context_id => $context_id, id => $id)

Retrieves a specific user entry with rank

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationLeaderboardsApi;

my $api_instance = WWW::SwaggerClient::GamificationLeaderboardsApi->new();
my $context_type = 'context_type_example'; # string | The context type for the leaderboard
my $context_id = 'context_id_example'; # string | The context id for the leaderboard
my $id = 'id_example'; # string | The id of a user

eval { 
    my $result = $api_instance->get_user_rank_using_get(context_type => $context_type, context_id => $context_id, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLeaderboardsApi->get_user_rank_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_type** | **string**| The context type for the leaderboard | 
 **context_id** | **string**| The context id for the leaderboard | 
 **id** | **string**| The id of a user | 

### Return type

[**LeaderboardEntryResource**](LeaderboardEntryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

