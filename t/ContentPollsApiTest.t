=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

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

use_ok('KnetikCloud::ContentPollsApi');

my $api = KnetikCloud::ContentPollsApi->new();
isa_ok($api, 'KnetikCloud::ContentPollsApi');

#
# answer_poll test
#
{
    my $id = undef; # replace NULL with a proper value
    my $answer_key = undef; # replace NULL with a proper value
    my $result = $api->answer_poll(id => $id, answer_key => $answer_key);
}

#
# create_poll test
#
{
    my $poll_resource = undef; # replace NULL with a proper value
    my $result = $api->create_poll(poll_resource => $poll_resource);
}

#
# create_poll_template test
#
{
    my $poll_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_poll_template(poll_template_resource => $poll_template_resource);
}

#
# delete_poll test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_poll(id => $id);
}

#
# delete_poll_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_poll_template(id => $id, cascade => $cascade);
}

#
# get_poll test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_poll(id => $id);
}

#
# get_poll_answer test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_poll_answer(id => $id);
}

#
# get_poll_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_poll_template(id => $id);
}

#
# get_poll_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_poll_templates(size => $size, page => $page, order => $order);
}

#
# get_polls test
#
{
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_text = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_polls(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_text => $filter_text, size => $size, page => $page, order => $order);
}

#
# update_poll test
#
{
    my $id = undef; # replace NULL with a proper value
    my $poll_resource = undef; # replace NULL with a proper value
    my $result = $api->update_poll(id => $id, poll_resource => $poll_resource);
}

#
# update_poll_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $poll_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_poll_template(id => $id, poll_template_resource => $poll_template_resource);
}


1;
