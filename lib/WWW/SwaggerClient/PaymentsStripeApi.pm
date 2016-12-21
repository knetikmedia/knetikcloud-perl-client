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
package WWW::SwaggerClient::PaymentsStripeApi;

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
# create_customer_using_post1
#
# Create a Stripe payment method for a user
# 
# @param StripeCreatePaymentMethod $request The request to create a Stripe customer with payment info (optional)
{
    my $params = {
    'request' => {
        data_type => 'StripeCreatePaymentMethod',
        description => 'The request to create a Stripe customer with payment info',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_customer_using_post1' } = { 
    	summary => 'Create a Stripe payment method for a user',
        params => $params,
        returns => 'PaymentMethodResource',
        };
}
# @return PaymentMethodResource
#
sub create_customer_using_post1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/stripe/payment-methods';
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
    my $_response_object = $self->{api_client}->deserialize('PaymentMethodResource', $response);
    return $_response_object;
}

#
# pay_invoice_using_post1
#
# Pay with a single use token
# 
# @param StripePaymentRequest $request The request to pay an invoice (optional)
{
    my $params = {
    'request' => {
        data_type => 'StripePaymentRequest',
        description => 'The request to pay an invoice',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'pay_invoice_using_post1' } = { 
    	summary => 'Pay with a single use token',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub pay_invoice_using_post1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/stripe/payments';
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
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
