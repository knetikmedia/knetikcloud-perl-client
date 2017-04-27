# KnetikCloud::Object::ArticleResource

## Load the model package
```perl
use KnetikCloud::Object::ArticleResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** | Whether the article is active | 
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**body** | **string** | The body of the article | 
**category** | [**NestedCategory**](NestedCategory.md) | The category for the article | 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **string** | The id of the article | [optional] 
**tags** | **ARRAY[string]** | The tags for the article | [optional] 
**template** | **string** | An article template this article is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**title** | **string** | The title of the article | 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


