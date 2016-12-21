=begin comment

Knetik Platform API Documentation Latest

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::PaymentsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_payment_method_using_post
#
# Create a new payment method for a user
# 
# @param int $user_id ID of the user for whom the payment method is being created (required)
# @param PaymentMethodResource $payment_method Payment method being created (optional)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'ID of the user for whom the payment method is being created',
        required => '1',
    },
    'payment_method' => {
        data_type => 'PaymentMethodResource',
        description => 'Payment method being created',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_payment_method_using_post' } = { 
    	summary => 'Create a new payment method for a user',
        params => $params,
        returns => 'PaymentMethodResource',
        };
}
# @return PaymentMethodResource
#
sub create_payment_method_using_post {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling create_payment_method_using_post");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/payment-methods';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'payment_method'}) {
        $_body_data = $args{'payment_method'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PaymentMethodResource', $response);
    return $_response_object;
}

#
# delete_payment_method_using_delete
#
# Delete an existing payment method for a user
# 
# @param int $user_id ID of the user for whom the payment method is being updated (required)
# @param int $id ID of the payment method being deleted (required)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'ID of the user for whom the payment method is being updated',
        required => '1',
    },
    'id' => {
        data_type => 'int',
        description => 'ID of the payment method being deleted',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_payment_method_using_delete' } = { 
    	summary => 'Delete an existing payment method for a user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_payment_method_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling delete_payment_method_using_delete");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_payment_method_using_delete");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/payment-methods/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_payment_method_using_get
#
# Get a single payment method for a user
# 
# @param int $user_id ID of the user for whom the payment method is being retrieved (required)
# @param int $id ID of the payment method being retrieved (required)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'ID of the user for whom the payment method is being retrieved',
        required => '1',
    },
    'id' => {
        data_type => 'int',
        description => 'ID of the payment method being retrieved',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_payment_method_using_get' } = { 
    	summary => 'Get a single payment method for a user',
        params => $params,
        returns => 'PaymentMethodResource',
        };
}
# @return PaymentMethodResource
#
sub get_payment_method_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling get_payment_method_using_get");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_payment_method_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/payment-methods/{id}';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PaymentMethodResource', $response);
    return $_response_object;
}

#
# get_payment_methods_using_get
#
# Get all payment methods for a user
# 
# @param int $user_id ID of the user for whom the payment methods are being retrieved (required)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'ID of the user for whom the payment methods are being retrieved',
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
    'order' => {
        data_type => 'string',
        description => 'a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_payment_methods_using_get' } = { 
    	summary => 'Get all payment methods for a user',
        params => $params,
        returns => 'ARRAY[PaymentMethodResource]',
        };
}
# @return ARRAY[PaymentMethodResource]
#
sub get_payment_methods_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling get_payment_methods_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/payment-methods';
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

    # query params
    if ( exists $args{'order'}) {
        $query_params->{'order'} = $self->{api_client}->to_query_value($args{'order'});
    }

    # path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[PaymentMethodResource]', $response);
    return $_response_object;
}

#
# payment_authorization_using_post
#
# Authorize payment of an invoice for later capture
# 
# @param PaymentAuthorizationResource $request Payment authorization request (optional)
{
    my $params = {
    'request' => {
        data_type => 'PaymentAuthorizationResource',
        description => 'Payment authorization request',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'payment_authorization_using_post' } = { 
    	summary => 'Authorize payment of an invoice for later capture',
        params => $params,
        returns => 'PaymentAuthorizationResource',
        };
}
# @return PaymentAuthorizationResource
#
sub payment_authorization_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/authorizations';
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
    if ( exists $args{'request'}) {
        $_body_data = $args{'request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PaymentAuthorizationResource', $response);
    return $_response_object;
}

#
# payment_capture_using_post
#
# Capture an existing invoice payment authorization
# 
# @param int $id ID of the payment authorization to capture (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of the payment authorization to capture',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'payment_capture_using_post' } = { 
    	summary => 'Capture an existing invoice payment authorization',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub payment_capture_using_post {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling payment_capture_using_post");
    }

    # parse inputs
    my $_resource_path = '/payment/authorizations/{id}/capture';
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
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_payment_method_using_put
#
# Update an existing payment method for a user
# 
# @param int $user_id ID of the user for whom the payment method is being updated (required)
# @param int $id ID of the payment method being updated (required)
# @param PaymentMethodResource $payment_method The updated payment method data (optional)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'ID of the user for whom the payment method is being updated',
        required => '1',
    },
    'id' => {
        data_type => 'int',
        description => 'ID of the payment method being updated',
        required => '1',
    },
    'payment_method' => {
        data_type => 'PaymentMethodResource',
        description => 'The updated payment method data',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_payment_method_using_put' } = { 
    	summary => 'Update an existing payment method for a user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_payment_method_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling update_payment_method_using_put");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_payment_method_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/payment-methods/{id}';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'payment_method'}) {
        $_body_data = $args{'payment_method'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
