# KnetikCloud::UtilBatchApi

## Load the API package
```perl
use KnetikCloud::Object::UtilBatchApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_batch**](UtilBatchApi.md#send_batch) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **send_batch**
> ARRAY[BatchReturn] send_batch(batch => $batch)

Request to run API call given the method, content type, path url, and body of request

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UtilBatchApi;

my $api_instance = KnetikCloud::UtilBatchApi->new();
my $batch = KnetikCloud::Object::Batch->new(); # Batch | The batch object

eval { 
    my $result = $api_instance->send_batch(batch => $batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilBatchApi->send_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)| The batch object | [optional] 

### Return type

[**ARRAY[BatchReturn]**](BatchReturn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

