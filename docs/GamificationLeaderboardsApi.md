# KnetikCloud::GamificationLeaderboardsApi

## Load the API package
```perl
use KnetikCloud::Object::GamificationLeaderboardsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_leaderboard**](GamificationLeaderboardsApi.md#get_leaderboard) | **GET** /leaderboards/{context_type}/{context_id} | Retrieves leaderboard details and paginated entries
[**get_leaderboard_rank**](GamificationLeaderboardsApi.md#get_leaderboard_rank) | **GET** /leaderboards/{context_type}/{context_id}/users/{id}/rank | Retrieves a specific user entry with rank
[**get_leaderboard_strategies**](GamificationLeaderboardsApi.md#get_leaderboard_strategies) | **GET** /leaderboards/strategies | Get a list of available leaderboard strategy names


# **get_leaderboard**
> LeaderboardResource get_leaderboard(context_type => $context_type, context_id => $context_id, size => $size, page => $page, order => $order)

Retrieves leaderboard details and paginated entries

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. Sorting is based on the fields of LeaderboardEntryResource rather than the returned LeaderboardResource.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::GamificationLeaderboardsApi;

my $api_instance = KnetikCloud::GamificationLeaderboardsApi->new();
my $context_type = 'context_type_example'; # string | The context type for the leaderboard
my $context_id = 'context_id_example'; # string | The context id for the leaderboard
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_leaderboard(context_type => $context_type, context_id => $context_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLeaderboardsApi->get_leaderboard: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_type** | **string**| The context type for the leaderboard | 
 **context_id** | **string**| The context id for the leaderboard | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to score:DESC,updated:ASC,user_id:ASC]

### Return type

[**LeaderboardResource**](LeaderboardResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_leaderboard_rank**
> LeaderboardEntryResource get_leaderboard_rank(context_type => $context_type, context_id => $context_id, id => $id)

Retrieves a specific user entry with rank

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::GamificationLeaderboardsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::GamificationLeaderboardsApi->new();
my $context_type = 'context_type_example'; # string | The context type for the leaderboard
my $context_id = 'context_id_example'; # string | The context id for the leaderboard
my $id = 'id_example'; # string | The id of a user

eval { 
    my $result = $api_instance->get_leaderboard_rank(context_type => $context_type, context_id => $context_id, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLeaderboardsApi->get_leaderboard_rank: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_leaderboard_strategies**
> ARRAY[string] get_leaderboard_strategies()

Get a list of available leaderboard strategy names

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::GamificationLeaderboardsApi;

my $api_instance = KnetikCloud::GamificationLeaderboardsApi->new();

eval { 
    my $result = $api_instance->get_leaderboard_strategies();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationLeaderboardsApi->get_leaderboard_strategies: $@\n";
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

