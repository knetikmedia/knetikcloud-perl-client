# KnetikCloud::AmazonWebServicesS3Api

## Load the API package
```perl
use KnetikCloud::Object::AmazonWebServicesS3Api;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_signed_s3_url**](AmazonWebServicesS3Api.md#get_signed_s3_url) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL


# **get_signed_s3_url**
> AmazonS3Activity get_signed_s3_url(filename => $filename, content_type => $content_type)

Get a signed S3 URL

Requires the file name and file content type (i.e., 'video/mpeg')

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AmazonWebServicesS3Api;
my $api_instance = KnetikCloud::AmazonWebServicesS3Api->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filename = 'filename_example'; # string | The file name
my $content_type = 'content_type_example'; # string | The content type

eval { 
    my $result = $api_instance->get_signed_s3_url(filename => $filename, content_type => $content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AmazonWebServicesS3Api->get_signed_s3_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **string**| The file name | [optional] 
 **content_type** | **string**| The content type | [optional] 

### Return type

[**AmazonS3Activity**](AmazonS3Activity.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

