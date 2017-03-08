=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package KnetikCloud::InvoicesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use KnetikCloud::ApiClient;
use KnetikCloud::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => KnetikCloud::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_invoice
#
# Create an invoice
# 
# @param InvoiceCreateRequest $req Invoice to be created (optional)
{
    my $params = {
    'req' => {
        data_type => 'InvoiceCreateRequest',
        description => 'Invoice to be created',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_invoice' } = { 
    	summary => 'Create an invoice',
        params => $params,
        returns => 'ARRAY[InvoiceResource]',
        };
}
# @return ARRAY[InvoiceResource]
#
sub create_invoice {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/invoices';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'req'}) {
        $_body_data = $args{'req'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InvoiceResource]', $response);
    return $_response_object;
}

#
# get_ful_fillment_statuses
#
# Lists available fulfillment statuses
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_ful_fillment_statuses' } = { 
    	summary => 'Lists available fulfillment statuses',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub get_ful_fillment_statuses {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/invoices/fulfillment-statuses';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[string]', $response);
    return $_response_object;
}

#
# get_invoice
#
# Retrieve an invoice
# 
# @param int $id The id of the invoice (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoice' } = { 
    	summary => 'Retrieve an invoice',
        params => $params,
        returns => 'InvoiceResource',
        };
}
# @return InvoiceResource
#
sub get_invoice {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_invoice");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InvoiceResource', $response);
    return $_response_object;
}

#
# get_invoice_logs
#
# List invoice logs
# 
# @param int $id The id of the invoice (required)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'size' => {
        data_type => 'int',
        description => 'The number of objects returned per page',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The number of the page returned, starting with 1',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoice_logs' } = { 
    	summary => 'List invoice logs',
        params => $params,
        returns => 'PageResourceInvoiceLogEntry',
        };
}
# @return PageResourceInvoiceLogEntry
#
sub get_invoice_logs {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_invoice_logs");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/logs';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceInvoiceLogEntry', $response);
    return $_response_object;
}

#
# get_invoices
#
# Retrieve invoices
# 
# @param int $filter_user The id of a user to get invoices for. Automtically added if not being called with admin permissions. (optional)
# @param string $filter_email Filters invoices by customer&#39;s email. Admins only. (optional)
# @param string $filter_fulfillment_status Filters invoices by fulfillment status type. Can be a comma separated list of statuses (optional)
# @param string $filter_payment_status Filters invoices by payment status type. Can be a comma separated list of statuses (optional)
# @param string $filter_item_name Filters invoices by item name containing the given string (optional)
# @param string $filter_external_ref Filters invoices by external reference. (optional)
# @param string $filter_created_date Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 (optional)
# @param string $filter_vendor_ids Filters invoices for ones from one of the vendors whose id is in the given comma separated list (optional)
# @param string $filter_currency Filters invoices by currency. ISO3 currency code (optional)
# @param string $filter_shipping_state_name Filters invoices by shipping address: Exact match state name (optional)
# @param string $filter_shipping_country_name Filters invoices by shipping address: Exact match country name (optional)
# @param double $filter_shipping Filters invoices by shipping price (optional)
# @param string $filter_vendor_name Filters invoices by vendor name starting with given string (optional)
# @param string $filter_sku Filters invoices by item sku (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
{
    my $params = {
    'filter_user' => {
        data_type => 'int',
        description => 'The id of a user to get invoices for. Automtically added if not being called with admin permissions.',
        required => '0',
    },
    'filter_email' => {
        data_type => 'string',
        description => 'Filters invoices by customer&#39;s email. Admins only.',
        required => '0',
    },
    'filter_fulfillment_status' => {
        data_type => 'string',
        description => 'Filters invoices by fulfillment status type. Can be a comma separated list of statuses',
        required => '0',
    },
    'filter_payment_status' => {
        data_type => 'string',
        description => 'Filters invoices by payment status type. Can be a comma separated list of statuses',
        required => '0',
    },
    'filter_item_name' => {
        data_type => 'string',
        description => 'Filters invoices by item name containing the given string',
        required => '0',
    },
    'filter_external_ref' => {
        data_type => 'string',
        description => 'Filters invoices by external reference.',
        required => '0',
    },
    'filter_created_date' => {
        data_type => 'string',
        description => 'Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874',
        required => '0',
    },
    'filter_vendor_ids' => {
        data_type => 'string',
        description => 'Filters invoices for ones from one of the vendors whose id is in the given comma separated list',
        required => '0',
    },
    'filter_currency' => {
        data_type => 'string',
        description => 'Filters invoices by currency. ISO3 currency code',
        required => '0',
    },
    'filter_shipping_state_name' => {
        data_type => 'string',
        description => 'Filters invoices by shipping address: Exact match state name',
        required => '0',
    },
    'filter_shipping_country_name' => {
        data_type => 'string',
        description => 'Filters invoices by shipping address: Exact match country name',
        required => '0',
    },
    'filter_shipping' => {
        data_type => 'double',
        description => 'Filters invoices by shipping price',
        required => '0',
    },
    'filter_vendor_name' => {
        data_type => 'string',
        description => 'Filters invoices by vendor name starting with given string',
        required => '0',
    },
    'filter_sku' => {
        data_type => 'string',
        description => 'Filters invoices by item sku',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'The number of objects returned per page',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The number of the page returned, starting with 1',
        required => '0',
    },
    'order' => {
        data_type => 'string',
        description => 'A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_invoices' } = { 
    	summary => 'Retrieve invoices',
        params => $params,
        returns => 'PageResourceInvoiceResource',
        };
}
# @return PageResourceInvoiceResource
#
sub get_invoices {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/invoices';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'filter_user'}) {
        $query_params->{'filter_user'} = $self->{api_client}->to_query_value($args{'filter_user'});
    }

    # query params
    if ( exists $args{'filter_email'}) {
        $query_params->{'filter_email'} = $self->{api_client}->to_query_value($args{'filter_email'});
    }

    # query params
    if ( exists $args{'filter_fulfillment_status'}) {
        $query_params->{'filter_fulfillment_status'} = $self->{api_client}->to_query_value($args{'filter_fulfillment_status'});
    }

    # query params
    if ( exists $args{'filter_payment_status'}) {
        $query_params->{'filter_payment_status'} = $self->{api_client}->to_query_value($args{'filter_payment_status'});
    }

    # query params
    if ( exists $args{'filter_item_name'}) {
        $query_params->{'filter_item_name'} = $self->{api_client}->to_query_value($args{'filter_item_name'});
    }

    # query params
    if ( exists $args{'filter_external_ref'}) {
        $query_params->{'filter_external_ref'} = $self->{api_client}->to_query_value($args{'filter_external_ref'});
    }

    # query params
    if ( exists $args{'filter_created_date'}) {
        $query_params->{'filter_created_date'} = $self->{api_client}->to_query_value($args{'filter_created_date'});
    }

    # query params
    if ( exists $args{'filter_vendor_ids'}) {
        $query_params->{'filter_vendor_ids'} = $self->{api_client}->to_query_value($args{'filter_vendor_ids'});
    }

    # query params
    if ( exists $args{'filter_currency'}) {
        $query_params->{'filter_currency'} = $self->{api_client}->to_query_value($args{'filter_currency'});
    }

    # query params
    if ( exists $args{'filter_shipping_state_name'}) {
        $query_params->{'filter_shipping_state_name'} = $self->{api_client}->to_query_value($args{'filter_shipping_state_name'});
    }

    # query params
    if ( exists $args{'filter_shipping_country_name'}) {
        $query_params->{'filter_shipping_country_name'} = $self->{api_client}->to_query_value($args{'filter_shipping_country_name'});
    }

    # query params
    if ( exists $args{'filter_shipping'}) {
        $query_params->{'filter_shipping'} = $self->{api_client}->to_query_value($args{'filter_shipping'});
    }

    # query params
    if ( exists $args{'filter_vendor_name'}) {
        $query_params->{'filter_vendor_name'} = $self->{api_client}->to_query_value($args{'filter_vendor_name'});
    }

    # query params
    if ( exists $args{'filter_sku'}) {
        $query_params->{'filter_sku'} = $self->{api_client}->to_query_value($args{'filter_sku'});
    }

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'order'}) {
        $query_params->{'order'} = $self->{api_client}->to_query_value($args{'order'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceInvoiceResource', $response);
    return $_response_object;
}

#
# get_payment_statuses
#
# Lists available payment statuses
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_payment_statuses' } = { 
    	summary => 'Lists available payment statuses',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub get_payment_statuses {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/invoices/payment-statuses';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[string]', $response);
    return $_response_object;
}

#
# pay_invoice
#
# Trigger payment of an invoice
# 
# @param int $id The id of the invoice (required)
# @param PayBySavedMethodRequest $request Payment info (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'request' => {
        data_type => 'PayBySavedMethodRequest',
        description => 'Payment info',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'pay_invoice' } = { 
    	summary => 'Trigger payment of an invoice',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub pay_invoice {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling pay_invoice");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/payments';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request'}) {
        $_body_data = $args{'request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# set_external_ref
#
# Set the external reference of an invoice
# 
# @param int $id The id of the invoice (required)
# @param string $external_ref External reference info (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'external_ref' => {
        data_type => 'string',
        description => 'External reference info',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_external_ref' } = { 
    	summary => 'Set the external reference of an invoice',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_external_ref {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_external_ref");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/external-ref';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'external_ref'}) {
        $_body_data = $args{'external_ref'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# set_invoice_item_fulfillment_status
#
# Set the fulfillment status of an invoice item
# 
# @param int $id The id of the invoice (required)
# @param string $sku The sku of an item in the invoice (required)
# @param string $status The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'sku' => {
        data_type => 'string',
        description => 'The sku of an item in the invoice',
        required => '1',
    },
    'status' => {
        data_type => 'string',
        description => 'The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39;',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_invoice_item_fulfillment_status' } = { 
    	summary => 'Set the fulfillment status of an invoice item',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_invoice_item_fulfillment_status {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_invoice_item_fulfillment_status");
    }

    # verify the required parameter 'sku' is set
    unless (exists $args{'sku'}) {
      croak("Missing the required parameter 'sku' when calling set_invoice_item_fulfillment_status");
    }

    # verify the required parameter 'status' is set
    unless (exists $args{'status'}) {
      croak("Missing the required parameter 'status' when calling set_invoice_item_fulfillment_status");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/items/{sku}/fulfillment-status';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'sku'}) {
        my $_base_variable = "{" . "sku" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sku'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'status'}) {
        $_body_data = $args{'status'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# set_order_notes
#
# Set the order notes of an invoice
# 
# @param int $id The id of the invoice (required)
# @param string $order_notes Payment status info (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'order_notes' => {
        data_type => 'string',
        description => 'Payment status info',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_order_notes' } = { 
    	summary => 'Set the order notes of an invoice',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_order_notes {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_order_notes");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/order-notes';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'order_notes'}) {
        $_body_data = $args{'order_notes'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# set_payment_status
#
# Set the payment status of an invoice
# 
# @param int $id The id of the invoice (required)
# @param InvoicePaymentStatusRequest $request Payment status info (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'request' => {
        data_type => 'InvoicePaymentStatusRequest',
        description => 'Payment status info',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_payment_status' } = { 
    	summary => 'Set the payment status of an invoice',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_payment_status {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_payment_status");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/payment-status';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request'}) {
        $_body_data = $args{'request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_billing_info
#
# Set or update billing info
# 
# @param int $id The id of the invoice (required)
# @param AddressResource $billing_info_request Address info (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the invoice',
        required => '1',
    },
    'billing_info_request' => {
        data_type => 'AddressResource',
        description => 'Address info',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_billing_info' } = { 
    	summary => 'Set or update billing info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_billing_info {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_billing_info");
    }

    # parse inputs
    my $_resource_path = '/invoices/{id}/billing-address';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'billing_info_request'}) {
        $_body_data = $args{'billing_info_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
