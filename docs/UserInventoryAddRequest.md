# KnetikCloud::Object::UserInventoryAddRequest

## Load the model package
```perl
use KnetikCloud::Object::UserInventoryAddRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note** | **string** | A note to be passed to the invoice or transaction | 
**overrides** | **ARRAY[string]** | A list of behaviors to ignore explicitely.  Ex: &#39;limited_gettable&#39; | [optional] 
**skip_invoice** | **boolean** | If set to true will cause the endpoint to skip creation of cart and invoice to track the inventory change | 
**sku** | **string** | The specific SKU of the item to be added to the inventory | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


