# WWW::SwaggerClient::Object::BreTriggerResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::BreTriggerResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **string** | The category this trigger belongs to. See endpoints for related asset information. All new triggers are in category &#39;custom&#39; | [optional] 
**event_name** | **string** | The unique name for the event. This serves as the unique identifier. Cannot be changed after creation | 
**parameters** | [**ARRAY[BreTriggerParameterDefinition]**](BreTriggerParameterDefinition.md) | A list af parameters that will be sent with the event when the trigger is fired. These must be included in the event and match the described types | [optional] 
**system_trigger** | **boolean** | Where this trigger came from. System triggers cannot be removed or updated | [optional] 
**trigger_description** | **string** | A description of the trigger | 
**trigger_name** | **string** | A human readable name for this trigger | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


