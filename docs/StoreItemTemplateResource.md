# WWW::SwaggerClient::Object::StoreItemTemplateResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::StoreItemTemplateResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behaviors** | [**ARRAY[ItemBehaviorDefinitionResource]**](ItemBehaviorDefinitionResource.md) | The customized behaviors that are required or default for this type of item | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **string** | The id of the template | [optional] 
**name** | **string** | The name of the template | 
**properties** | [**ARRAY[PropertyDefinitionResource]**](PropertyDefinitionResource.md) | The customized properties that are present | [optional] 
**sku_template** | [**TemplateResource**](TemplateResource.md) | A template to apply to all skus on an item using this template | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


