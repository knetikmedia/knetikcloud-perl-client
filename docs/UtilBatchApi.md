# WWW::SwaggerClient::UtilBatchApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilBatchApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_batch_post_using_post**](UtilBatchApi.md#get_batch_post_using_post) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **get_batch_post_using_post**
> get_batch_post_using_post(batch => $batch)

Request to run API call given the method, content type, path url, and body of request

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilBatchApi;

my $api_instance = WWW::SwaggerClient::UtilBatchApi->new();
my $batch = WWW::SwaggerClient::Object::Batch->new(); # Batch | The batch object

eval { 
    $api_instance->get_batch_post_using_post(batch => $batch);
};
if ($@) {
    warn "Exception when calling UtilBatchApi->get_batch_post_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)| The batch object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
