# WWW::SwaggerClient::Object::SubscriptionTemplateResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::SubscriptionTemplateResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **string** | The id of the template | [optional] 
**name** | **string** | The name of the template | 
**plan_template** | [**TemplateResource**](TemplateResource.md) | A template to apply to all plans on a subscription using this template | [optional] 
**properties** | [**ARRAY[PropertyDefinitionResource]**](PropertyDefinitionResource.md) | The customized properties that are present | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


