# KnetikCloud::ReportingChallengesApi

## Load the API package
```perl
use KnetikCloud::Object::ReportingChallengesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_challenge_event_leaderboard**](ReportingChallengesApi.md#get_challenge_event_leaderboard) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**get_challenge_event_participants**](ReportingChallengesApi.md#get_challenge_event_participants) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **get_challenge_event_leaderboard**
> PageResourceChallengeEventParticipantResource get_challenge_event_leaderboard(filter_event => $filter_event)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingChallengesApi->new();
my $filter_event = 789; # int | A sepecific challenge event id

eval { 
    my $result = $api_instance->get_challenge_event_leaderboard(filter_event => $filter_event);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingChallengesApi->get_challenge_event_leaderboard: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_event_participants**
> PageResourceChallengeEventParticipantResource get_challenge_event_participants(filter_event => $filter_event)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::ReportingChallengesApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::ReportingChallengesApi->new();
my $filter_event = 789; # int | A sepecific challenge event id

eval { 
    my $result = $api_instance->get_challenge_event_participants(filter_event => $filter_event);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReportingChallengesApi->get_challenge_event_participants: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **int**| A sepecific challenge event id | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

