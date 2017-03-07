# WWW::SwaggerClient::Object::CategoryResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::CategoryResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** | Whether the category is currently active. If not, it and its questions will be filtered out. | [optional] 
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**id** | **string** | The unique ID for this category | [optional] 
**name** | **string** | The name of this category. Cannot be blank | 
**template** | **string** | A category template this category is validated against (private). May be null and no validation of additional_properties will be done | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


