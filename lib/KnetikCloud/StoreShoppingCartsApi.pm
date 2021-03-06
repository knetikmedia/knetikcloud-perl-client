=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

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
package KnetikCloud::StoreShoppingCartsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use KnetikCloud::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'KnetikCloud::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = KnetikCloud::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# add_custom_discount
#
# Adds a custom discount to the cart
# 
# @param string $id The id of the cart (required)
# @param CouponDefinition $custom_discount The details of the discount to add (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'custom_discount' => {
        data_type => 'CouponDefinition',
        description => 'The details of the discount to add',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_custom_discount' } = { 
    	summary => 'Adds a custom discount to the cart',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub add_custom_discount {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling add_custom_discount");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/custom-discounts';

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
    if ( exists $args{'custom_discount'}) {
        $_body_data = $args{'custom_discount'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# add_discount_to_cart
#
# Adds a discount coupon to the cart
# 
# @param string $id The id of the cart (required)
# @param SkuRequest $sku_request The request of the sku (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'sku_request' => {
        data_type => 'SkuRequest',
        description => 'The request of the sku',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_discount_to_cart' } = { 
    	summary => 'Adds a discount coupon to the cart',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub add_discount_to_cart {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling add_discount_to_cart");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/discounts';

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
    if ( exists $args{'sku_request'}) {
        $_body_data = $args{'sku_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# add_item_to_cart
#
# Add an item to the cart
# 
# @param string $id The id of the cart (required)
# @param CartItemRequest $cart_item_request The cart item request object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'cart_item_request' => {
        data_type => 'CartItemRequest',
        description => 'The cart item request object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_item_to_cart' } = { 
    	summary => 'Add an item to the cart',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub add_item_to_cart {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling add_item_to_cart");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/items';

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
    if ( exists $args{'cart_item_request'}) {
        $_body_data = $args{'cart_item_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# create_cart
#
# Create a cart
# 
# @param int $owner Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
# @param string $currency_code Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)
{
    my $params = {
    'owner' => {
        data_type => 'int',
        description => 'Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required',
        required => '0',
    },
    'currency_code' => {
        data_type => 'string',
        description => 'Set the currency for the cart, by currency code. May be disallowed by site settings.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_cart' } = { 
    	summary => 'Create a cart',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub create_cart {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/carts';

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

    # query params
    if ( exists $args{'owner'}) {
        $query_params->{'owner'} = $self->{api_client}->to_query_value($args{'owner'});
    }

    # query params
    if ( exists $args{'currency_code'}) {
        $query_params->{'currency_code'} = $self->{api_client}->to_query_value($args{'currency_code'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# get_cart
#
# Returns the cart with the given GUID
# 
# @param string $id The id of the cart (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_cart' } = { 
    	summary => 'Returns the cart with the given GUID',
        params => $params,
        returns => 'Cart',
        };
}
# @return Cart
#
sub get_cart {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_cart");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}';

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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Cart', $response);
    return $_response_object;
}

#
# get_carts
#
# Get a list of carts
# 
# @param int $filter_owner_id Filter by the id of the owner (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_owner_id' => {
        data_type => 'int',
        description => 'Filter by the id of the owner',
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
    __PACKAGE__->method_documentation->{ 'get_carts' } = { 
    	summary => 'Get a list of carts',
        params => $params,
        returns => 'PageResourceCartSummary',
        };
}
# @return PageResourceCartSummary
#
sub get_carts {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/carts';

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
    if ( exists $args{'filter_owner_id'}) {
        $query_params->{'filter_owner_id'} = $self->{api_client}->to_query_value($args{'filter_owner_id'});
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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceCartSummary', $response);
    return $_response_object;
}

#
# get_shippable
#
# Returns whether a cart requires shipping
# 
# @param string $id The id of the cart (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_shippable' } = { 
    	summary => 'Returns whether a cart requires shipping',
        params => $params,
        returns => 'CartShippableResponse',
        };
}
# @return CartShippableResponse
#
sub get_shippable {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_shippable");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/shippable';

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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('CartShippableResponse', $response);
    return $_response_object;
}

#
# get_shipping_countries
#
# Get the list of available shipping countries per vendor
# 
# @param string $id The id of the cart (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_shipping_countries' } = { 
    	summary => 'Get the list of available shipping countries per vendor',
        params => $params,
        returns => 'SampleCountriesResponse',
        };
}
# @return SampleCountriesResponse
#
sub get_shipping_countries {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_shipping_countries");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/countries';

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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SampleCountriesResponse', $response);
    return $_response_object;
}

#
# remove_discount_from_cart
#
# Removes a discount coupon from the cart
# 
# @param string $id The id of the cart (required)
# @param string $code The SKU code of the coupon to remove (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'code' => {
        data_type => 'string',
        description => 'The SKU code of the coupon to remove',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'remove_discount_from_cart' } = { 
    	summary => 'Removes a discount coupon from the cart',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub remove_discount_from_cart {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling remove_discount_from_cart");
    }

    # verify the required parameter 'code' is set
    unless (exists $args{'code'}) {
      croak("Missing the required parameter 'code' when calling remove_discount_from_cart");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/discounts/{code}';

    my $_method = 'DELETE';
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
    if ( exists $args{'code'}) {
        my $_base_variable = "{" . "code" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'code'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# set_cart_currency
#
# Sets the currency to use for the cart
# 
# @param string $id The id of the cart (required)
# @param StringWrapper $currency_code The code of the currency (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'currency_code' => {
        data_type => 'StringWrapper',
        description => 'The code of the currency',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_cart_currency' } = { 
    	summary => 'Sets the currency to use for the cart',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_cart_currency {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_cart_currency");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/currency';

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
    if ( exists $args{'currency_code'}) {
        $_body_data = $args{'currency_code'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# set_cart_owner
#
# Sets the owner of a cart if none is set already
# 
# @param string $id The id of the cart (required)
# @param IntWrapper $user_id The id of the user (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'user_id' => {
        data_type => 'IntWrapper',
        description => 'The id of the user',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_cart_owner' } = { 
    	summary => 'Sets the owner of a cart if none is set already',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_cart_owner {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_cart_owner");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/owner';

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
    if ( exists $args{'user_id'}) {
        $_body_data = $args{'user_id'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_item_in_cart
#
# Changes the quantity of an item already in the cart
# 
# @param string $id The id of the cart (required)
# @param CartItemRequest $cart_item_request The cart item request object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'cart_item_request' => {
        data_type => 'CartItemRequest',
        description => 'The cart item request object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_item_in_cart' } = { 
    	summary => 'Changes the quantity of an item already in the cart',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_item_in_cart {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_item_in_cart");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/items';

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
    if ( exists $args{'cart_item_request'}) {
        $_body_data = $args{'cart_item_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_shipping_address
#
# Modifies or sets the order shipping address
# 
# @param string $id The id of the cart (required)
# @param CartShippingAddressRequest $cart_shipping_address_request The cart shipping address request object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the cart',
        required => '1',
    },
    'cart_shipping_address_request' => {
        data_type => 'CartShippingAddressRequest',
        description => 'The cart shipping address request object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_shipping_address' } = { 
    	summary => 'Modifies or sets the order shipping address',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_shipping_address {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_shipping_address");
    }

    # parse inputs
    my $_resource_path = '/carts/{id}/shipping-address';

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
    if ( exists $args{'cart_shipping_address_request'}) {
        $_body_data = $args{'cart_shipping_address_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
