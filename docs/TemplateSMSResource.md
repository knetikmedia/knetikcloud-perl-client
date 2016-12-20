# WWW::SwaggerClient::Object::TemplateSMSResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::TemplateSMSResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **string** | The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. | [optional] 
**localizer** | [**Localizer**](Localizer.md) |  | [optional] 
**recipients** | **ARRAY[int]** | A list of user ids to send the message to. | 
**template_key** | **string** | The key for the template. | 
**template_vars** | **ARRAY[string]** | A list of values to fill in the template. Order matters. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


