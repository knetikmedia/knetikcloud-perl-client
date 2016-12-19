# WWW::SwaggerClient::Object::InvoiceResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::InvoiceResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_address1** | **string** | Line one of the customer&#39;s billing address | [optional] 
**billing_address2** | **string** | Line two of the customer&#39;s billing address | [optional] 
**billing_city_name** | **string** | The city for the customer&#39;s billing address | [optional] 
**billing_country_name** | **string** | The country for the customer&#39;s billing address | [optional] 
**billing_full_name** | **string** | The customer&#39;s name for the billing address | [optional] 
**billing_postal_code** | **string** | The postal code for the customer&#39;s billing address | [optional] 
**billing_state_name** | **string** | The state for the customer&#39;s billing address | [optional] 
**cart_id** | **string** | The guid of the cart this invoice came from | [optional] 
**created_date** | **int** | The date the invoice was created, unix timestamp in seconds | [optional] 
**currency** | **string** | The code for the currency invoice prices are in | [optional] 
**current_fulfillment_status** | **string** | The fulfillment status of the invoice | [optional] 
**current_payment_status** | **string** | The payment status of the invoice | [optional] 
**discount** | **double** | The amount of money saved through coupons | [optional] 
**email** | **string** | The customer&#39;s email address | [optional] 
**fed_tax** | **double** | The amount of federal tax added | [optional] 
**grand_total** | **double** | The final price of the invoice | [optional] 
**id** | **int** | The id of the invoice | [optional] 
**invoice_number** | **string** | A reference number for the invoice | [optional] 
**items** | [**ARRAY[InvoiceItemResource]**](InvoiceItemResource.md) | A list of items within the invoice | [optional] 
**name_prefix** | **string** | The customer&#39;s name prefix | [optional] 
**order_notes** | **string** | Notes about the order | [optional] 
**parent_invoice_id** | **int** | The id of an invoice this is a child of | [optional] 
**payment_method_id** | **int** | The id of a saved payment method used to pay for the invoice | [optional] 
**phone** | **string** | The customer&#39;s phone number | [optional] 
**phone_number** | **string** | The customer&#39;s phone number | [optional] 
**shipping** | **double** | The shipping cost | [optional] 
**shipping_address1** | **string** | Line one of the customer&#39;s shipping address | [optional] 
**shipping_address2** | **string** | Line two of the customer&#39;s shipping address | [optional] 
**shipping_city_name** | **string** | The city for the customer&#39;s shipping address | [optional] 
**shipping_country_name** | **string** | The country for the customer&#39;s shipping address | [optional] 
**shipping_full_name** | **string** | The customer&#39;s name for the shipping address | [optional] 
**shipping_postal_code** | **string** | The postal code for the customer&#39;s shipping address | [optional] 
**shipping_state_name** | **string** | The state for the customer&#39;s shipping address | [optional] 
**sort** | **int** | A number to use in sorting items. default 500. | [optional] 
**state_tax** | **double** | The amount of state tax added | [optional] 
**subtotal** | **double** | The sum price of all items before shipping, coupons and tax | [optional] 
**updated_date** | **int** | The date the invoice was last updated, unix timestamp in seconds | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The owner of the invoice | [optional] 
**vendor_id** | **int** | The id of the vendor | [optional] 
**vendor_name** | **string** | The name of the invoice | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


