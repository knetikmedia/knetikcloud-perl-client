# WWW::SwaggerClient::Object::TemplateEmailResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::TemplateEmailResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **string** | Address to attribute the outgoing message to. Optional if the config email.out_address is set. | [optional] 
**recipients** | **ARRAY[int]** | A list of user ids to send the message to. | 
**template_key** | **string** | The key for the template | 
**template_vars** | [**ARRAY[KeyValuePairstringstring]**](KeyValuePairstringstring.md) | A list of variables to fill in the template | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


