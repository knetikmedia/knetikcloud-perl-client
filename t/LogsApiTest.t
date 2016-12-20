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

use_ok('WWW::SwaggerClient::LogsApi');

my $api = WWW::SwaggerClient::LogsApi->new();
isa_ok($api, 'WWW::SwaggerClient::LogsApi');

#
# add_user_log_using_post test
#
{
    my $log_entry = undef; # replace NULL with a proper value
    my $result = $api->add_user_log_using_post(log_entry => $log_entry);
}

#
# get_event_log_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_event_log_using_get(id => $id);
}

#
# get_events_logs_using_get test
#
{
    my $filter_start_date = undef; # replace NULL with a proper value
    my $filter_event_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_events_logs_using_get(filter_start_date => $filter_start_date, filter_event_name => $filter_event_name, size => $size, page => $page, order => $order);
}

#
# get_forward_log_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_forward_log_using_get(id => $id);
}

#
# get_forward_logs_using_get test
#
{
    my $filter_start_date = undef; # replace NULL with a proper value
    my $filter_end_date = undef; # replace NULL with a proper value
    my $filter_status_code = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_forward_logs_using_get(filter_start_date => $filter_start_date, filter_end_date => $filter_end_date, filter_status_code => $filter_status_code, size => $size, page => $page, order => $order);
}

#
# get_user_logs_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_user_logs_using_get(id => $id);
}

#
# get_user_logs_using_get1 test
#
{
    my $filter_user = undef; # replace NULL with a proper value
    my $filter_action_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_user_logs_using_get1(filter_user => $filter_user, filter_action_name => $filter_action_name, size => $size, page => $page);
}


1;
