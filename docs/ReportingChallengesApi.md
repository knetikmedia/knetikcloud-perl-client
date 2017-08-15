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
> PageResourceChallengeEventParticipantResource get_challenge_event_leaderboard(filter_event => $filter_event, size => $size, page => $page, order => $order)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ReportingChallengesApi;
my $api_instance = KnetikCloud::ReportingChallengesApi->new(
);

my $filter_event = 789; # int | A sepecific challenge event id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_event_leaderboard(filter_event => $filter_event, size => $size, page => $page, order => $order);
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
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_challenge_event_participants**
> PageResourceChallengeEventParticipantResource get_challenge_event_participants(filter_event => $filter_event, size => $size, page => $page, order => $order)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ReportingChallengesApi;
my $api_instance = KnetikCloud::ReportingChallengesApi->new(
);

my $filter_event = 789; # int | A sepecific challenge event id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_challenge_event_participants(filter_event => $filter_event, size => $size, page => $page, order => $order);
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
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

