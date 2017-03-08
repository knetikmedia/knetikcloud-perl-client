# KnetikCloud::Object::QuestionTemplateResource

## Load the model package
```perl
use KnetikCloud::Object::QuestionTemplateResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answer_property** | [**PropertyDefinitionResource**](PropertyDefinitionResource.md) | A property definition for all answers. If included each answer must match this definition&#39;s type and be valid | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **string** | The id of the template | [optional] 
**name** | **string** | The name of the template | 
**properties** | [**ARRAY[PropertyDefinitionResource]**](PropertyDefinitionResource.md) | The customized properties that are present | [optional] 
**question_property** | [**PropertyDefinitionResource**](PropertyDefinitionResource.md) | A property definition for the question itself. If included the answer must match this definition&#39;s type and be valid | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


