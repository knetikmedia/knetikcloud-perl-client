# WWW::SwaggerClient::ReportingChallengesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ReportingChallengesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_challenge_event_leaderboard_using_get**](ReportingChallengesApi.md#get_challenge_event_leaderboard_using_get) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**get_challenge_event_participants_using_get**](ReportingChallengesApi.md#get_challenge_event_participants_using_get) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **get_challenge_event_leaderboard_using_get**
> PageChallengeEventParticipantResource get_challenge_event_leaderboard_using_get(filter_event => $filter_event)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ReportingChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ReportingChallengesApi->new();
my $filter_event = 789; # int | A sepecific challenge event id

eval { 
    my $result = $api_instance->get_challenge_event_leaderboard_using_get(filter_event => $filter_event);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingChallengesApi->get_challenge_event_leaderboard_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageChallengeEventParticipantResource**](PageChallengeEventParticipantResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_event_participants_using_get**
> PageChallengeEventParticipantResource get_challenge_event_participants_using_get(filter_event => $filter_event)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ReportingChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ReportingChallengesApi->new();
my $filter_event = 789; # int | A sepecific challenge event id

eval { 
    my $result = $api_instance->get_challenge_event_participants_using_get(filter_event => $filter_event);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingChallengesApi->get_challenge_event_participants_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageChallengeEventParticipantResource**](PageChallengeEventParticipantResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

