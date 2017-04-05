# KnetikCloud::GamificationMetricsApi

## Load the API package
```perl
use KnetikCloud::Object::GamificationMetricsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_metric**](GamificationMetricsApi.md#add_metric) | **POST** /metrics | Add a metric


# **add_metric**
> add_metric(metric => $metric)

Add a metric

Post a new score/stat for an activity occurrence without ending the occurrence itself

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::GamificationMetricsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::GamificationMetricsApi->new();
my $metric = KnetikCloud::Object::MetricResource->new(); # MetricResource | The new metric

eval { 
    $api_instance->add_metric(metric => $metric);
};
if ($@) {
    warn "Exception when calling GamificationMetricsApi->add_metric: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**MetricResource**](MetricResource.md)| The new metric | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

