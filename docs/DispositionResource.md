# WWW::SwaggerClient::Object::DispositionResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::DispositionResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | **string** | The context of that resource. Required when passed to /dispositions rather than context specific endpoint | [optional] 
**context_id** | **string** | The context_id of that resource. Required when passed to /dispositions rather than context specific endpoint | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **int** | The unique ID for that resource | [optional] 
**name** | **string** | The name of the disposition, 1-20 characters. (ex: like/dislike/favorite, etc) | 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


