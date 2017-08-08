# KnetikCloud::Object::AmazonS3Activity

## Load the model package
```perl
use KnetikCloud::Object::AmazonS3Activity;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **string** | S3 action (i.e., &#39;PUT&#39;) associated with the activity | [optional] 
**cdn_url** | **string** | URL for accessing the resource via CDN if configured (will default to the main url if not) | [optional] 
**created_date** | **int** | Date the resource was created in S3 | [optional] 
**filename** | **string** | Name of the file being processed as a resource in S3 | [optional] 
**id** | **int** | Unique id of the S3 activity | [optional] 
**object_key** | **string** | S3 object key for the resource | [optional] 
**url** | **string** | URL for posting and later accessing the S3 resource | [optional] 
**user_id** | **int** | The id of the user that created this S3 activity | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


