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

use_ok('KnetikCloud::GamificationTriviaApi');

my $api = KnetikCloud::GamificationTriviaApi->new();
isa_ok($api, 'KnetikCloud::GamificationTriviaApi');

#
# add_question_answers test
#
{
    my $question_id = undef; # replace NULL with a proper value
    my $answer = undef; # replace NULL with a proper value
    my $result = $api->add_question_answers(question_id => $question_id, answer => $answer);
}

#
# add_question_tag test
#
{
    my $id = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->add_question_tag(id => $id, tag => $tag);
}

#
# add_tag_to_questions_batch test
#
{
    my $tag = undef; # replace NULL with a proper value
    my $filter_search = undef; # replace NULL with a proper value
    my $filter_idset = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tag = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_published = undef; # replace NULL with a proper value
    my $filter_import_id = undef; # replace NULL with a proper value
    my $result = $api->add_tag_to_questions_batch(tag => $tag, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
}

#
# create_import_job test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->create_import_job(request => $request);
}

#
# create_question test
#
{
    my $question = undef; # replace NULL with a proper value
    my $result = $api->create_question(question => $question);
}

#
# create_question_template test
#
{
    my $question_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_question_template(question_template_resource => $question_template_resource);
}

#
# delete_import_job test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_import_job(id => $id);
}

#
# delete_question test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_question(id => $id);
}

#
# delete_question_answers test
#
{
    my $question_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_question_answers(question_id => $question_id, id => $id);
}

#
# delete_question_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_question_template(id => $id, cascade => $cascade);
}

#
# get_import_job test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_import_job(id => $id);
}

#
# get_import_jobs test
#
{
    my $filter_vendor = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_status = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_import_jobs(filter_vendor => $filter_vendor, filter_category => $filter_category, filter_name => $filter_name, filter_status => $filter_status, size => $size, page => $page, order => $order);
}

#
# get_question test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_question(id => $id);
}

#
# get_question_answer test
#
{
    my $question_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_question_answer(question_id => $question_id, id => $id);
}

#
# get_question_answers test
#
{
    my $question_id = undef; # replace NULL with a proper value
    my $result = $api->get_question_answers(question_id => $question_id);
}

#
# get_question_deltas test
#
{
    my $since = undef; # replace NULL with a proper value
    my $result = $api->get_question_deltas(since => $since);
}

#
# get_question_tags test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_question_tags(id => $id);
}

#
# get_question_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_question_template(id => $id);
}

#
# get_question_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_question_templates(size => $size, page => $page, order => $order);
}

#
# get_questions test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $filter_search = undef; # replace NULL with a proper value
    my $filter_idset = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_tag = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_published = undef; # replace NULL with a proper value
    my $filter_import_id = undef; # replace NULL with a proper value
    my $result = $api->get_questions(size => $size, page => $page, order => $order, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_tag => $filter_tag, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
}

#
# get_questions_count test
#
{
    my $filter_search = undef; # replace NULL with a proper value
    my $filter_idset = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tag = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_published = undef; # replace NULL with a proper value
    my $result = $api->get_questions_count(filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published);
}

#
# process_import_job test
#
{
    my $id = undef; # replace NULL with a proper value
    my $publish_now = undef; # replace NULL with a proper value
    my $result = $api->process_import_job(id => $id, publish_now => $publish_now);
}

#
# remove_question_tag test
#
{
    my $id = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->remove_question_tag(id => $id, tag => $tag);
}

#
# remove_tag_to_questions_batch test
#
{
    my $tag = undef; # replace NULL with a proper value
    my $filter_search = undef; # replace NULL with a proper value
    my $filter_idset = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tag = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_published = undef; # replace NULL with a proper value
    my $filter_import_id = undef; # replace NULL with a proper value
    my $result = $api->remove_tag_to_questions_batch(tag => $tag, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
}

#
# search_question_tags test
#
{
    my $filter_search = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_import_id = undef; # replace NULL with a proper value
    my $result = $api->search_question_tags(filter_search => $filter_search, filter_category => $filter_category, filter_import_id => $filter_import_id);
}

#
# update_import_job test
#
{
    my $id = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->update_import_job(id => $id, request => $request);
}

#
# update_question test
#
{
    my $id = undef; # replace NULL with a proper value
    my $question = undef; # replace NULL with a proper value
    my $result = $api->update_question(id => $id, question => $question);
}

#
# update_question_answer test
#
{
    my $question_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $answer = undef; # replace NULL with a proper value
    my $result = $api->update_question_answer(question_id => $question_id, id => $id, answer => $answer);
}

#
# update_question_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $question_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_question_template(id => $id, question_template_resource => $question_template_resource);
}

#
# update_questions_in_bulk test
#
{
    my $question = undef; # replace NULL with a proper value
    my $filter_search = undef; # replace NULL with a proper value
    my $filter_idset = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $filter_published = undef; # replace NULL with a proper value
    my $filter_import_id = undef; # replace NULL with a proper value
    my $result = $api->update_questions_in_bulk(question => $question, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
}


1;
