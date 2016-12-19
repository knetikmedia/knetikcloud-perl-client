# WWW::SwaggerClient::AWSS3Api

## Load the API package
```perl
use WWW::SwaggerClient::Object::AWSS3Api;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pre_sign_url_using_get**](AWSS3Api.md#pre_sign_url_using_get) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL


# **pre_sign_url_using_get**
> AmazonS3Activity pre_sign_url_using_get(filename => $filename, content_type => $content_type)

Get a signed S3 URL

Requires the file name and file content type (i.e., 'video/mpeg')

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::AWSS3Api;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::AWSS3Api->new();
my $filename = 'filename_example'; # string | The file name
my $content_type = 'content_type_example'; # string | The content type

eval { 
    my $result = $api_instance->pre_sign_url_using_get(filename => $filename, content_type => $content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AWSS3Api->pre_sign_url_using_get: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

