=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

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

use_ok('KnetikCloud::InvoicesApi');

my $api = KnetikCloud::InvoicesApi->new();
isa_ok($api, 'KnetikCloud::InvoicesApi');

#
# create_invoice test
#
{
    my $req = undef; # replace NULL with a proper value
    my $result = $api->create_invoice(req => $req);
}

#
# get_ful_fillment_statuses test
#
{
    my $result = $api->get_ful_fillment_statuses();
}

#
# get_invoice test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_invoice(id => $id);
}

#
# get_invoice_logs test
#
{
    my $id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_invoice_logs(id => $id, size => $size, page => $page);
}

#
# get_invoices test
#
{
    my $filter_user = undef; # replace NULL with a proper value
    my $filter_email = undef; # replace NULL with a proper value
    my $filter_fulfillment_status = undef; # replace NULL with a proper value
    my $filter_payment_status = undef; # replace NULL with a proper value
    my $filter_item_name = undef; # replace NULL with a proper value
    my $filter_external_ref = undef; # replace NULL with a proper value
    my $filter_created_date = undef; # replace NULL with a proper value
    my $filter_vendor_ids = undef; # replace NULL with a proper value
    my $filter_currency = undef; # replace NULL with a proper value
    my $filter_shipping_state_name = undef; # replace NULL with a proper value
    my $filter_shipping_country_name = undef; # replace NULL with a proper value
    my $filter_shipping = undef; # replace NULL with a proper value
    my $filter_vendor_name = undef; # replace NULL with a proper value
    my $filter_sku = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_invoices(filter_user => $filter_user, filter_email => $filter_email, filter_fulfillment_status => $filter_fulfillment_status, filter_payment_status => $filter_payment_status, filter_item_name => $filter_item_name, filter_external_ref => $filter_external_ref, filter_created_date => $filter_created_date, filter_vendor_ids => $filter_vendor_ids, filter_currency => $filter_currency, filter_shipping_state_name => $filter_shipping_state_name, filter_shipping_country_name => $filter_shipping_country_name, filter_shipping => $filter_shipping, filter_vendor_name => $filter_vendor_name, filter_sku => $filter_sku, size => $size, page => $page, order => $order);
}

#
# get_payment_statuses test
#
{
    my $result = $api->get_payment_statuses();
}

#
# pay_invoice test
#
{
    my $id = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->pay_invoice(id => $id, request => $request);
}

#
# set_external_ref test
#
{
    my $id = undef; # replace NULL with a proper value
    my $external_ref = undef; # replace NULL with a proper value
    my $result = $api->set_external_ref(id => $id, external_ref => $external_ref);
}

#
# set_invoice_item_fulfillment_status test
#
{
    my $id = undef; # replace NULL with a proper value
    my $sku = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $result = $api->set_invoice_item_fulfillment_status(id => $id, sku => $sku, status => $status);
}

#
# set_order_notes test
#
{
    my $id = undef; # replace NULL with a proper value
    my $order_notes = undef; # replace NULL with a proper value
    my $result = $api->set_order_notes(id => $id, order_notes => $order_notes);
}

#
# set_payment_status test
#
{
    my $id = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->set_payment_status(id => $id, request => $request);
}

#
# update_billing_info test
#
{
    my $id = undef; # replace NULL with a proper value
    my $billing_info_request = undef; # replace NULL with a proper value
    my $result = $api->update_billing_info(id => $id, billing_info_request => $billing_info_request);
}


1;