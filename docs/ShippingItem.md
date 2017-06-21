# KnetikCloud::Object::ShippingItem

## Load the model package
```perl
use KnetikCloud::Object::ShippingItem;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template | [optional] 
**behaviors** | [**ARRAY[Behavior]**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] 
**category** | **string** | A category for filtering items | [optional] 
**created_date** | **int** | The date the item was created, unix timestamp in seconds | [optional] 
**id** | **int** | The id of the item | [optional] 
**long_description** | **string** | A long description of the item | [optional] 
**name** | **string** | The name of the item | 
**short_description** | **string** | A short description of the item, max 255 chars | [optional] 
**sort** | **int** | A number to use in sorting items.  Default 500 | [optional] 
**tags** | **ARRAY[string]** | List of tags used for filtering items | [optional] 
**template** | **string** | An item template this item is validated against.  May be null and no validation of additional_properties will be done.  Default &#x3D; null | [optional] 
**type_hint** | **string** | The type of the item | 
**unique_key** | **string** | The unique key for the item | [optional] 
**updated_date** | **int** | The date the item was last updated, unix timestamp in seconds | [optional] 
**displayable** | **boolean** | Whether or not the item is currently displayable.  Default &#x3D; true | [optional] 
**geo_country_list** | **ARRAY[string]** | A list of country ID to include in the blacklist/whitelist geo policy | [optional] 
**geo_policy_type** | **string** | Whether to use the geo_country_list as a black list or white list for item geographical availability | [optional] 
**shipping_tier** | **int** | Provides the abstract shipping needs if this item is physical and can be shipped.  A value of zero means no shipping needed.  Default &#x3D; 0 | [optional] 
**skus** | [**ARRAY[Sku]**](Sku.md) | The skus for the item. Each defines a unique configuration for the item to be purchased (Large-Blue, Small-Green, etc). These are what is ultimately selected in the store and added to the cart | 
**store_end** | **int** | The date the item will leave the store, unix timestamp in seconds.  If set to null, item will never leave the store | [optional] 
**store_start** | **int** | The date the item will appear in the store, unix timestamp in seconds.  If set to null, item will appear in store immediately | [optional] 
**vendor_id** | **int** | The vendor who provides the item | 
**countries** | **ARRAY[string]** | A unique list of country iso3 codes that allow the shipping option | [optional] 
**max_tier_total** | **int** | An abstract max value that the values of item&#39;s shipping_tier work against to decide whether an order can be fulfilled | 
**taxable** | **boolean** | Whether tax should be applied to the shipping price.  Default &#x3D; false | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


