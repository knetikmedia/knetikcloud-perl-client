=begin comment

Knetik Platform API Documentation Latest

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
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

use_ok('WWW::SwaggerClient::PaymentsWalletsApi');

my $api = WWW::SwaggerClient::PaymentsWalletsApi->new();
isa_ok($api, 'WWW::SwaggerClient::PaymentsWalletsApi');

#
# get_wallet_totals_using_get test
#
{
    my $result = $api->get_wallet_totals_using_get();
}

#
# get_wallet_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $result = $api->get_wallet_using_get(user_id => $user_id, currency_code => $currency_code);
}

#
# get_wallets_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_wallets_using_get(user_id => $user_id);
}

#
# get_wallets_using_get1 test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_wallets_using_get1(size => $size, page => $page, order => $order);
}

#
# transaction_history_using_get test
#
{
    my $filter_invoice = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_max_date = undef; # replace NULL with a proper value
    my $filter_min_date = undef; # replace NULL with a proper value
    my $filter_sign = undef; # replace NULL with a proper value
    my $filter_user_id = undef; # replace NULL with a proper value
    my $filter_username = undef; # replace NULL with a proper value
    my $filter_details = undef; # replace NULL with a proper value
    my $filter_currency_code = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->transaction_history_using_get(filter_invoice => $filter_invoice, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, filter_user_id => $filter_user_id, filter_username => $filter_username, filter_details => $filter_details, filter_currency_code => $filter_currency_code, size => $size, page => $page, order => $order);
}

#
# update_balance_using_put test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->update_balance_using_put(user_id => $user_id, currency_code => $currency_code, request => $request);
}

#
# user_transaction_history_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_max_date = undef; # replace NULL with a proper value
    my $filter_min_date = undef; # replace NULL with a proper value
    my $filter_sign = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->user_transaction_history_using_get(user_id => $user_id, currency_code => $currency_code, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, size => $size, page => $page, order => $order);
}


1;