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

use_ok('WWW::SwaggerClient::ContentPollsApi');

my $api = WWW::SwaggerClient::ContentPollsApi->new();
isa_ok($api, 'WWW::SwaggerClient::ContentPollsApi');

#
# answer_poll_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $answer_key = undef; # replace NULL with a proper value
    my $result = $api->answer_poll_using_post(id => $id, answer_key => $answer_key);
}

#
# create_poll_template_using_post test
#
{
    my $poll_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_poll_template_using_post(poll_template_resource => $poll_template_resource);
}

#
# create_poll_using_post test
#
{
    my $poll_resource = undef; # replace NULL with a proper value
    my $result = $api->create_poll_using_post(poll_resource => $poll_resource);
}

#
# delete_poll_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_poll_template_using_delete(id => $id, cascade => $cascade);
}

#
# delete_poll_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_poll_using_delete(id => $id);
}

#
# get_poll_answer_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_poll_answer_using_get(id => $id);
}

#
# get_poll_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_poll_template_using_get(id => $id);
}

#
# get_poll_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_poll_templates_using_get(size => $size, page => $page, order => $order);
}

#
# get_poll_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_poll_using_get(id => $id);
}

#
# get_polls_using_get test
#
{
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_text = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_polls_using_get(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_text => $filter_text, size => $size, page => $page, order => $order);
}

#
# update_poll_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $poll_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_poll_template_using_put(id => $id, poll_template_resource => $poll_template_resource);
}

#
# update_poll_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $poll_resource = undef; # replace NULL with a proper value
    my $result = $api->update_poll_using_put(id => $id, poll_resource => $poll_resource);
}


1;
