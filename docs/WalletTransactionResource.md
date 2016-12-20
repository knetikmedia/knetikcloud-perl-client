# WWW::SwaggerClient::Object::WalletTransactionResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::WalletTransactionResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **double** | The new balance of the wallet after the transaction | [optional] 
**create_date** | **int** | The unix timestamp in seconds of the transaction | [optional] 
**currency_code** | **string** | The code of the currency for the transaction | [optional] 
**details** | **string** | The specific details of the transaction, such as a message from the admin that created it | [optional] 
**id** | **int** | The id of the transaction | [optional] 
**invoice_id** | **int** | The id of the invoice that spawned the transaction, if any | [optional] 
**is_refunded** | **boolean** | Whether the transaction has been refunded | [optional] 
**response** | **string** | The response | [optional] 
**source** | **string** | The root source of the transaction | [optional] 
**successful** | **boolean** | If the transaction was successful | [optional] 
**transaction_id** | **string** | The payment gateway (external) transaction ID | [optional] 
**type** | **string** | The general type of the transaction | [optional] 
**type_hint** | **string** | The table name of the subclass | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The owner of the wallet | [optional] 
**value** | **double** | The amount of the transaction, positive if a gain, negative if an expenditure | [optional] 
**wallet_id** | **int** | The id of the wallet this transaction affected | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


