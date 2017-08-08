# KnetikCloud::UtilBatchApi

## Load the API package
```perl
use KnetikCloud::Object::UtilBatchApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_batch**](UtilBatchApi.md#get_batch) | **GET** /batch/{token} | Get batch result with token
[**send_batch**](UtilBatchApi.md#send_batch) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **get_batch**
> ARRAY[BatchReturn] get_batch(token => $token)

Get batch result with token

Tokens expire in 24 hours

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilBatchApi;
my $api_instance = KnetikCloud::UtilBatchApi->new(
);

my $token = 'token_example'; # string | token

eval { 
    my $result = $api_instance->get_batch(token => $token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilBatchApi->get_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **string**| token | 

### Return type

[**ARRAY[BatchReturn]**](BatchReturn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_batch**
> ARRAY[BatchReturn] send_batch(batch => $batch)

Request to run API call given the method, content type, path url, and body of request

Should the request take longer than one of the alloted timeout parameters, a token will be returned instead, which can be used on the token endpoint in this service

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilBatchApi;
my $api_instance = KnetikCloud::UtilBatchApi->new(
);

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

