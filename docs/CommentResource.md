# KnetikCloud::Object::CommentResource

## Load the model package
```perl
use KnetikCloud::Object::CommentResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **string** | The comment content of that resource | 
**context** | **string** | The type of object this comment applies to (ex: video, article, etc). Required when passed to /comments | [optional] 
**context_id** | **int** | The id of the object this comment applies to.  Required when passed to /comments | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since epoch | [optional] 
**id** | **int** | The unique ID for that resource | [optional] 
**summary** | **string** | The summary of that resource | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since epoch | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user who created the comment | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


