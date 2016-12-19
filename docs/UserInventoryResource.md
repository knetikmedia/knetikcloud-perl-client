# WWW::SwaggerClient::Object::UserInventoryResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::UserInventoryResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behavior_data** | **object** | A map of data for behaviors | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since epoch | [optional] 
**expires** | **int** | The date/time this resource exires in seconds since epoch. Null for no expiration. For subscriptions, this is the end of the &#39;grace period&#39; if left unpaid | [optional] 
**id** | **int** | The id of the inventory | [optional] 
**invoice_id** | **int** | The id of the invoice that resulted in this inventory, if any | [optional] 
**item_id** | **int** | The id of the item | [optional] 
**item_name** | **string** | The name of the item | [optional] 
**item_type_hint** | **string** | The type hint of the item | [optional] 
**status** | **string** | The status of the inventory. Pending inventory is not yet ready for use. Inactive inventory has expired or been used up | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since epoch | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The id of the user this inventory belongs to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


