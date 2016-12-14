# WWW::SwaggerClient::GamificationMetricsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GamificationMetricsApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_metric_using_post**](GamificationMetricsApi.md#add_metric_using_post) | **POST** /metrics | Add a metric


# **add_metric_using_post**
> add_metric_using_post(metric => $metric)

Add a metric

Post a new score/stat for an activity occurrence without ending the occurrence itself

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationMetricsApi;

my $api_instance = WWW::SwaggerClient::GamificationMetricsApi->new();
my $metric = WWW::SwaggerClient::Object::MetricResource->new(); # MetricResource | The new metric

eval { 
    $api_instance->add_metric_using_post(metric => $metric);
};
if ($@) {
    warn "Exception when calling GamificationMetricsApi->add_metric_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**MetricResource**](MetricResource.md)| The new metric | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

