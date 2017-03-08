# KnetikCloud::Object::Sku

## Load the model package
```perl
use KnetikCloud::Object::Sku;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template | [optional] 
**currency_code** | **string** | The currency code for the SKU, a three letter string (ISO3) | 
**description** | **string** | The description of the SKU (Ex: An item comes in multiple sizes/colors, each needing its own unique description) | [optional] 
**inventory** | **int** | The number of SKUs currently in stock | [optional] 
**min_inventory_threshold** | **int** | Alerts vendor when SKU inventory drops below this value | [optional] 
**original_price** | **double** | The base price before any sale | 
**price** | **double** | The current price of the SKU with sales, if any. Set original_price for the base | [optional] 
**published** | **boolean** | Whether or not the SKU is currently published | [optional] 
**sale_id** | **int** | The id of a sale affecting the price, if any | [optional] 
**sale_name** | **string** | The name of a sale affecting the price, if any | [optional] 
**sku** | **string** | The stock keeping unit (SKU), a unique identifier for a given product.  Max 40 characters | 
**start_date** | **int** | The date the sku becomes available, unix timestamp in seconds.  If set to null, sku will become available immediately | [optional] 
**stop_date** | **int** | The date the sku becomes unavailable, unix timestamp in seconds.  If set to null, sku is always available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


