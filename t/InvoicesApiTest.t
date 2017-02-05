=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::InvoicesApi');

my $api = WWW::SwaggerClient::InvoicesApi->new();
isa_ok($api, 'WWW::SwaggerClient::InvoicesApi');

#
# create_invoice_using_post test
#
{
    my $req = undef; # replace NULL with a proper value
    my $result = $api->create_invoice_using_post(req => $req);
}

#
# get_invoice_history_using_get test
#
{
    my $filter_user = undef; # replace NULL with a proper value
    my $filter_email = undef; # replace NULL with a proper value
    my $filter_fulfillment_status = undef; # replace NULL with a proper value
    my $filter_payment_status = undef; # replace NULL with a proper value
    my $filter_item_name = undef; # replace NULL with a proper value
    my $filter_created_date = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_invoice_history_using_get(filter_user => $filter_user, filter_email => $filter_email, filter_fulfillment_status => $filter_fulfillment_status, filter_payment_status => $filter_payment_status, filter_item_name => $filter_item_name, filter_created_date => $filter_created_date, size => $size, page => $page, order => $order);
}

#
# get_invoice_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_invoice_using_get(id => $id);
}

#
# get_logs_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_logs_using_get(id => $id, size => $size, page => $page);
}

#
# list_ful_fillment_statuses_using_get test
#
{
    my $result = $api->list_ful_fillment_statuses_using_get();
}

#
# list_payment_statuses_using_get test
#
{
    my $result = $api->list_payment_statuses_using_get();
}

#
# pay_invoice_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->pay_invoice_using_post(id => $id, request => $request);
}

#
# set_item_fulfillment_status_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $sku = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $result = $api->set_item_fulfillment_status_using_put(id => $id, sku => $sku, status => $status);
}

#
# set_order_notes_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $order_notes = undef; # replace NULL with a proper value
    my $result = $api->set_order_notes_using_put(id => $id, order_notes => $order_notes);
}

#
# set_payment_status_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->set_payment_status_using_put(id => $id, request => $request);
}

#
# update_billing_info_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $billing_info_request = undef; # replace NULL with a proper value
    my $result = $api->update_billing_info_using_put(id => $id, billing_info_request => $billing_info_request);
}


1;
