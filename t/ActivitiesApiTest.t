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

use_ok('KnetikCloud::ActivitiesApi');

my $api = KnetikCloud::ActivitiesApi->new();
isa_ok($api, 'KnetikCloud::ActivitiesApi');

#
# create_activity test
#
{
    my $activity_resource = undef; # replace NULL with a proper value
    my $result = $api->create_activity(activity_resource => $activity_resource);
}

#
# create_activity_occurrence test
#
{
    my $test = undef; # replace NULL with a proper value
    my $activity_occurrence_resource = undef; # replace NULL with a proper value
    my $result = $api->create_activity_occurrence(test => $test, activity_occurrence_resource => $activity_occurrence_resource);
}

#
# create_activity_template test
#
{
    my $activity_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_activity_template(activity_template_resource => $activity_template_resource);
}

#
# delete_activity test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_activity(id => $id);
}

#
# delete_activity_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_activity_template(id => $id, cascade => $cascade);
}

#
# get_activities test
#
{
    my $filter_template = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_activities(filter_template => $filter_template, filter_name => $filter_name, filter_id => $filter_id, size => $size, page => $page, order => $order);
}

#
# get_activity test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_activity(id => $id);
}

#
# get_activity_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_activity_template(id => $id);
}

#
# get_activity_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_activity_templates(size => $size, page => $page, order => $order);
}

#
# set_activity_occurrence_results test
#
{
    my $activity_occurrence_id = undef; # replace NULL with a proper value
    my $activity_occurrence_results = undef; # replace NULL with a proper value
    my $result = $api->set_activity_occurrence_results(activity_occurrence_id => $activity_occurrence_id, activity_occurrence_results => $activity_occurrence_results);
}

#
# update_activity test
#
{
    my $id = undef; # replace NULL with a proper value
    my $activity_resource = undef; # replace NULL with a proper value
    my $result = $api->update_activity(id => $id, activity_resource => $activity_resource);
}

#
# update_activity_occurrence test
#
{
    my $activity_occurrence_id = undef; # replace NULL with a proper value
    my $activity_cccurrence_status = undef; # replace NULL with a proper value
    my $result = $api->update_activity_occurrence(activity_occurrence_id => $activity_occurrence_id, activity_cccurrence_status => $activity_cccurrence_status);
}

#
# update_activity_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $activity_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_activity_template(id => $id, activity_template_resource => $activity_template_resource);
}


1;
