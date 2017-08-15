# KnetikCloud::AmazonWebServicesS3Api

## Load the API package
```perl
use KnetikCloud::Object::AmazonWebServicesS3Api;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_download_url**](AmazonWebServicesS3Api.md#get_download_url) | **GET** /amazon/s3/downloadurl | Get a temporary signed S3 URL for download
[**get_signed_s3_url**](AmazonWebServicesS3Api.md#get_signed_s3_url) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL for upload


# **get_download_url**
> string get_download_url(bucket => $bucket, path => $path, expiration => $expiration)

Get a temporary signed S3 URL for download

To give access to files in your own S3 account, you will need to grant KnetikcCloud access to the file by adjusting your bucket policy accordingly. See S3 documentation for details.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AmazonWebServicesS3Api;
my $api_instance = KnetikCloud::AmazonWebServicesS3Api->new(
);

my $bucket = 'bucket_example'; # string | S3 bucket name
my $path = 'path_example'; # string | The path to the file relative the bucket (the s3 object key)
my $expiration = 56; # int | The number of seconds this URL will be valid. Default to 60

eval { 
    my $result = $api_instance->get_download_url(bucket => $bucket, path => $path, expiration => $expiration);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AmazonWebServicesS3Api->get_download_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **string**| S3 bucket name | [optional] 
 **path** | **string**| The path to the file relative the bucket (the s3 object key) | [optional] 
 **expiration** | **int**| The number of seconds this URL will be valid. Default to 60 | [optional] [default to 60]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_signed_s3_url**
> AmazonS3Activity get_signed_s3_url(filename => $filename, content_type => $content_type)

Get a signed S3 URL for upload

Requires the file name and file content type (i.e., 'video/mpeg'). Make a PUT to the resulting url to upload the file and use the cdn_url to retrieve it after.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::AmazonWebServicesS3Api;
my $api_instance = KnetikCloud::AmazonWebServicesS3Api->new(
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

