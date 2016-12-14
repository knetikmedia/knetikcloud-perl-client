# WWW::SwaggerClient::GamificationTriviaApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GamificationTriviaApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_answers_using_post**](GamificationTriviaApi.md#add_answers_using_post) | **POST** /trivia/questions/{question_id}/answers | Add an answer to a question
[**add_tag_using_post**](GamificationTriviaApi.md#add_tag_using_post) | **POST** /trivia/questions/{id}/tags | Add a tag to a question
[**batch_add_tag_using_post**](GamificationTriviaApi.md#batch_add_tag_using_post) | **POST** /trivia/questions/tags | Add a tag to a batch of questions
[**batch_remove_tag_using_delete**](GamificationTriviaApi.md#batch_remove_tag_using_delete) | **DELETE** /trivia/questions/tags/{tag} | Remove a tag from a batch of questions
[**bulk_update_using_put**](GamificationTriviaApi.md#bulk_update_using_put) | **PUT** /trivia/questions | Bulk update questions
[**count_questions_using_get**](GamificationTriviaApi.md#count_questions_using_get) | **GET** /trivia/questions/count | Count questions based on filters.
[**create_question_template_using_post**](GamificationTriviaApi.md#create_question_template_using_post) | **POST** /trivia/questions/templates | Create a question template
[**create_question_using_post**](GamificationTriviaApi.md#create_question_using_post) | **POST** /trivia/questions | Create a question
[**create_using_post**](GamificationTriviaApi.md#create_using_post) | **POST** /trivia/import | Create an import job
[**delete_question_template_using_delete**](GamificationTriviaApi.md#delete_question_template_using_delete) | **DELETE** /trivia/questions/templates/{id} | Delete a question template
[**delete_question_using_delete**](GamificationTriviaApi.md#delete_question_using_delete) | **DELETE** /trivia/questions/{id} | Delete a question
[**delete_using_delete**](GamificationTriviaApi.md#delete_using_delete) | **DELETE** /trivia/import/{id} | Delete an import job
[**get_answer_using_get**](GamificationTriviaApi.md#get_answer_using_get) | **GET** /trivia/questions/{question_id}/answers/{id} | Get an answer for a question
[**get_answers_using_get**](GamificationTriviaApi.md#get_answers_using_get) | **GET** /trivia/questions/{question_id}/answers | List the answers available for a question
[**get_list_using_get1**](GamificationTriviaApi.md#get_list_using_get1) | **GET** /trivia/import | Get a list of import job
[**get_question_template_using_get**](GamificationTriviaApi.md#get_question_template_using_get) | **GET** /trivia/questions/templates/{id} | Get a single question template
[**get_question_templates_using_get**](GamificationTriviaApi.md#get_question_templates_using_get) | **GET** /trivia/questions/templates | List and search question templates
[**get_question_using_get**](GamificationTriviaApi.md#get_question_using_get) | **GET** /trivia/questions/{id} | Get a single question
[**get_questions_delta_using_get**](GamificationTriviaApi.md#get_questions_delta_using_get) | **GET** /trivia/questions/delta | List question deltas in ascending order of updated date
[**get_questions_using_get**](GamificationTriviaApi.md#get_questions_using_get) | **GET** /trivia/questions | List and search questions
[**get_tags_using_get1**](GamificationTriviaApi.md#get_tags_using_get1) | **GET** /trivia/questions/{id}/tags | List the tags for a question
[**get_tags_using_get2**](GamificationTriviaApi.md#get_tags_using_get2) | **GET** /trivia/tags | List and search tags by the beginning of the string
[**get_using_get**](GamificationTriviaApi.md#get_using_get) | **GET** /trivia/import/{id} | Get an import job
[**remove_answers_using_delete**](GamificationTriviaApi.md#remove_answers_using_delete) | **DELETE** /trivia/questions/{question_id}/answers/{id} | Remove an answer from a question
[**remove_tag_using_delete**](GamificationTriviaApi.md#remove_tag_using_delete) | **DELETE** /trivia/questions/{id}/tags/{tag} | Remove a tag from a question
[**start_process_using_post**](GamificationTriviaApi.md#start_process_using_post) | **POST** /trivia/import/{id}/process | Start processing an import job
[**update_answer_using_put**](GamificationTriviaApi.md#update_answer_using_put) | **PUT** /trivia/questions/{question_id}/answers/{id} | Update an answer for a question
[**update_question_template_using_put**](GamificationTriviaApi.md#update_question_template_using_put) | **PUT** /trivia/questions/templates/{id} | Update a question template
[**update_question_using_put**](GamificationTriviaApi.md#update_question_using_put) | **PUT** /trivia/questions/{id} | Update a question
[**update_using_put**](GamificationTriviaApi.md#update_using_put) | **PUT** /trivia/import/{id} | Update an import job


# **add_answers_using_post**
> AnswerResource add_answers_using_post(question_id => $question_id, answer => $answer)

Add an answer to a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question_id = 'question_id_example'; # string | The id of the question
my $answer = WWW::SwaggerClient::Object::AnswerResource->new(); # AnswerResource | The new answer

eval { 
    my $result = $api_instance->add_answers_using_post(question_id => $question_id, answer => $answer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->add_answers_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **string**| The id of the question | 
 **answer** | [**AnswerResource**](AnswerResource.md)| The new answer | [optional] 

### Return type

[**AnswerResource**](AnswerResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_tag_using_post**
> add_tag_using_post(id => $id, tag => $tag)

Add a tag to a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the question
my $tag = WWW::SwaggerClient::Object::string->new(); # string | The new tag

eval { 
    $api_instance->add_tag_using_post(id => $id, tag => $tag);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->add_tag_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the question | 
 **tag** | **string**| The new tag | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batch_add_tag_using_post**
> int batch_add_tag_using_post(tag => $tag, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id)

Add a tag to a batch of questions

All questions that dont't have the tag and match filters will have it added. The returned number is the number of questions updated.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $tag = WWW::SwaggerClient::Object::string->new(); # string | The tag to add
my $filter_search = 'filter_search_example'; # string | Filter for documents whose question, answers or tags contains provided string
my $filter_idset = 'filter_idset_example'; # string | Filter for documents whose id is in the comma separated list provided
my $filter_category = 'filter_category_example'; # string | Filter for questions with specified category, by id
my $filter_tag = 'filter_tag_example'; # string | Filter for questions with specified tag
my $filter_tagset = 'filter_tagset_example'; # string | Filter for questions with specified tags (separated by comma)
my $filter_type = 'filter_type_example'; # string | Filter for questions with specified type
my $filter_published = 1; # boolean | Filter for questions currenctly published or not
my $filter_import_id = 789; # int | Filter for questions from a specific import job

eval { 
    my $result = $api_instance->batch_add_tag_using_post(tag => $tag, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->batch_add_tag_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **string**| The tag to add | [optional] 
 **filter_search** | **string**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **string**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **string**| Filter for questions with specified category, by id | [optional] 
 **filter_tag** | **string**| Filter for questions with specified tag | [optional] 
 **filter_tagset** | **string**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **string**| Filter for questions with specified type | [optional] 
 **filter_published** | **boolean**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batch_remove_tag_using_delete**
> int batch_remove_tag_using_delete(tag => $tag, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id)

Remove a tag from a batch of questions

ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $tag = 'tag_example'; # string | The tag to remove
my $filter_search = 'filter_search_example'; # string | Filter for documents whose question, answers or tags contains provided string
my $filter_idset = 'filter_idset_example'; # string | Filter for documents whose id is in the comma separated list provided
my $filter_category = 'filter_category_example'; # string | Filter for questions with specified category, by id
my $filter_tag = 'filter_tag_example'; # string | Filter for questions with specified tag
my $filter_tagset = 'filter_tagset_example'; # string | Filter for questions with specified tags (separated by comma)
my $filter_type = 'filter_type_example'; # string | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
my $filter_published = 1; # boolean | Filter for questions currenctly published or not
my $filter_import_id = 789; # int | Filter for questions from a specific import job

eval { 
    my $result = $api_instance->batch_remove_tag_using_delete(tag => $tag, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->batch_remove_tag_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **string**| The tag to remove | 
 **filter_search** | **string**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **string**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **string**| Filter for questions with specified category, by id | [optional] 
 **filter_tag** | **string**| Filter for questions with specified tag | [optional] 
 **filter_tagset** | **string**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **string**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **boolean**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_update_using_put**
> int bulk_update_using_put(question => $question, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id)

Bulk update questions

Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question = WWW::SwaggerClient::Object::QuestionResource->new(); # QuestionResource | New values for a set of question fields
my $filter_search = 'filter_search_example'; # string | Filter for documents whose question, answers or tags contains provided string
my $filter_idset = 'filter_idset_example'; # string | Filter for documents whose id is in the comma separated list provided
my $filter_category = 'filter_category_example'; # string | Filter for questions with specified category, by id
my $filter_tagset = 'filter_tagset_example'; # string | Filter for questions with specified tags (separated by comma)
my $filter_type = 'filter_type_example'; # string | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
my $filter_published = 1; # boolean | Filter for questions currenctly published or not
my $filter_import_id = 789; # int | Filter for questions from a specific import job

eval { 
    my $result = $api_instance->bulk_update_using_put(question => $question, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->bulk_update_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| New values for a set of question fields | [optional] 
 **filter_search** | **string**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **string**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **string**| Filter for questions with specified category, by id | [optional] 
 **filter_tagset** | **string**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **string**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **boolean**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **count_questions_using_get**
> int count_questions_using_get(filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published)

Count questions based on filters.

This is also provided by the list endpoint so you don't need to call this for pagination purposes

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $filter_search = 'filter_search_example'; # string | Filter for documents whose question, answers or tags contains provided string
my $filter_idset = 'filter_idset_example'; # string | Filter for documents whose id is in the comma separated list provided
my $filter_category = 'filter_category_example'; # string | Filter for questions with specified category, by id
my $filter_tag = 'filter_tag_example'; # string | Filter for questions with specified tag
my $filter_tagset = 'filter_tagset_example'; # string | Filter for questions with specified tags (separated by comma)
my $filter_type = 'filter_type_example'; # string | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
my $filter_published = 1; # boolean | Filter for questions currenctly published or not

eval { 
    my $result = $api_instance->count_questions_using_get(filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tag => $filter_tag, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->count_questions_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **string**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **string**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **string**| Filter for questions with specified category, by id | [optional] 
 **filter_tag** | **string**| Filter for questions with specified tag | [optional] 
 **filter_tagset** | **string**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **string**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **boolean**| Filter for questions currenctly published or not | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_question_template_using_post**
> QuestionTemplateResource create_question_template_using_post(question_template_resource => $question_template_resource)

Create a question template

Question templates define a type of question and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question_template_resource = WWW::SwaggerClient::Object::QuestionTemplateResource->new(); # QuestionTemplateResource | The question template resource object

eval { 
    my $result = $api_instance->create_question_template_using_post(question_template_resource => $question_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->create_question_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_template_resource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_question_using_post**
> QuestionResource create_question_using_post(question => $question)

Create a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question = WWW::SwaggerClient::Object::QuestionResource->new(); # QuestionResource | The new question

eval { 
    my $result = $api_instance->create_question_using_post(question => $question);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->create_question_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| The new question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_using_post**
> ImportJobResource create_using_post(request => $request)

Create an import job

Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $request = WWW::SwaggerClient::Object::ImportJobResource->new(); # ImportJobResource | The new import job

eval { 
    my $result = $api_instance->create_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->create_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ImportJobResource**](ImportJobResource.md)| The new import job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_question_template_using_delete**
> delete_question_template_using_delete(id => $id, cascade => $cascade)

Delete a question template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_question_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->delete_question_template_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_question_using_delete**
> delete_question_using_delete(id => $id)

Delete a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the question

eval { 
    $api_instance->delete_question_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->delete_question_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the question | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_using_delete**
> delete_using_delete(id => $id)

Delete an import job

Also deletes all questions that were imported by it

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 789; # int | The id of the job

eval { 
    $api_instance->delete_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->delete_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_answer_using_get**
> AnswerResource get_answer_using_get(question_id => $question_id, id => $id)

Get an answer for a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question_id = 'question_id_example'; # string | The id of the question
my $id = 'id_example'; # string | The id of the answer

eval { 
    my $result = $api_instance->get_answer_using_get(question_id => $question_id, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_answer_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **string**| The id of the question | 
 **id** | **string**| The id of the answer | 

### Return type

[**AnswerResource**](AnswerResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_answers_using_get**
> ARRAY[AnswerResource] get_answers_using_get(question_id => $question_id)

List the answers available for a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question_id = 'question_id_example'; # string | The id of the question

eval { 
    my $result = $api_instance->get_answers_using_get(question_id => $question_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_answers_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **string**| The id of the question | 

### Return type

[**ARRAY[AnswerResource]**](AnswerResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_list_using_get1**
> PageImportJobResource get_list_using_get1(filter_vendor => $filter_vendor, filter_category => $filter_category, filter_name => $filter_name, filter_status => $filter_status, size => $size, page => $page, order => $order)

Get a list of import job

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $filter_vendor = 'filter_vendor_example'; # string | Filter for jobs by vendor id
my $filter_category = 'filter_category_example'; # string | Filter for jobs by category id
my $filter_name = 'filter_name_example'; # string | Filter for jobs which name *STARTS* with the given string
my $filter_status = 'filter_status_example'; # string | Filter for jobs that are in a specific set of statuses (comma separated)
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_list_using_get1(filter_vendor => $filter_vendor, filter_category => $filter_category, filter_name => $filter_name, filter_status => $filter_status, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_list_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_vendor** | **string**| Filter for jobs by vendor id | [optional] 
 **filter_category** | **string**| Filter for jobs by category id | [optional] 
 **filter_name** | **string**| Filter for jobs which name *STARTS* with the given string | [optional] 
 **filter_status** | **string**| Filter for jobs that are in a specific set of statuses (comma separated) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageImportJobResource**](PageImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_question_template_using_get**
> QuestionTemplateResource get_question_template_using_get(id => $id)

Get a single question template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_question_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_question_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_question_templates_using_get**
> PageQuestionTemplateResource get_question_templates_using_get(size => $size, page => $page, order => $order)

List and search question templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_question_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_question_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageQuestionTemplateResource**](PageQuestionTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_question_using_get**
> QuestionResource get_question_using_get(id => $id)

Get a single question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the question

eval { 
    my $result = $api_instance->get_question_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_question_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the question | 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_questions_delta_using_get**
> ARRAY[DeltaResource] get_questions_delta_using_get(since => $since)

List question deltas in ascending order of updated date

The 'since' parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $since = 789; # int | Timestamp in seconds

eval { 
    my $result = $api_instance->get_questions_delta_using_get(since => $since);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_questions_delta_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int**| Timestamp in seconds | [optional] 

### Return type

[**ARRAY[DeltaResource]**](DeltaResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_questions_using_get**
> PageQuestionResource get_questions_using_get(size => $size, page => $page, order => $order, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id)

List and search questions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
my $filter_search = 'filter_search_example'; # string | Filter for documents whose question, answers or tags contains provided string
my $filter_idset = 'filter_idset_example'; # string | Filter for documents whose id is in the comma separated list provided
my $filter_category = 'filter_category_example'; # string | Filter for questions with specified category, by id
my $filter_tagset = 'filter_tagset_example'; # string | Filter for questions with specified tags (separated by comma)
my $filter_type = 'filter_type_example'; # string | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
my $filter_published = 1; # boolean | Filter for questions currenctly published or not
my $filter_import_id = 789; # int | Filter for questions from a specific import job

eval { 
    my $result = $api_instance->get_questions_using_get(size => $size, page => $page, order => $order, filter_search => $filter_search, filter_idset => $filter_idset, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_type => $filter_type, filter_published => $filter_published, filter_import_id => $filter_import_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_questions_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]
 **filter_search** | **string**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **string**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **string**| Filter for questions with specified category, by id | [optional] 
 **filter_tagset** | **string**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **string**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **boolean**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **int**| Filter for questions from a specific import job | [optional] 

### Return type

[**PageQuestionResource**](PageQuestionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_using_get1**
> ARRAY[string] get_tags_using_get1(id => $id)

List the tags for a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the question

eval { 
    my $result = $api_instance->get_tags_using_get1(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_tags_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the question | 

### Return type

**ARRAY[string]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_using_get2**
> Collectionstring get_tags_using_get2(filter_search => $filter_search, filter_category => $filter_category, filter_import_id => $filter_import_id)

List and search tags by the beginning of the string

For performance reasons, search & category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $filter_search = 'filter_search_example'; # string | Filter for tags starting with the given text
my $filter_category = 'filter_category_example'; # string | Filter for tags on questions from a specific category
my $filter_import_id = 789; # int | Filter for tags on questions from a specific import job

eval { 
    my $result = $api_instance->get_tags_using_get2(filter_search => $filter_search, filter_category => $filter_category, filter_import_id => $filter_import_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_tags_using_get2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **string**| Filter for tags starting with the given text | [optional] 
 **filter_category** | **string**| Filter for tags on questions from a specific category | [optional] 
 **filter_import_id** | **int**| Filter for tags on questions from a specific import job | [optional] 

### Return type

[**Collectionstring**](Collectionstring.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_using_get**
> ImportJobResource get_using_get(id => $id)

Get an import job

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 789; # int | The id of the job

eval { 
    my $result = $api_instance->get_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->get_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_answers_using_delete**
> remove_answers_using_delete(question_id => $question_id, id => $id)

Remove an answer from a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question_id = 'question_id_example'; # string | The id of the question
my $id = 'id_example'; # string | The id of the answer

eval { 
    $api_instance->remove_answers_using_delete(question_id => $question_id, id => $id);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->remove_answers_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **string**| The id of the question | 
 **id** | **string**| The id of the answer | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_tag_using_delete**
> remove_tag_using_delete(id => $id, tag => $tag)

Remove a tag from a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the question
my $tag = 'tag_example'; # string | The tag to remove

eval { 
    $api_instance->remove_tag_using_delete(id => $id, tag => $tag);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->remove_tag_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the question | 
 **tag** | **string**| The tag to remove | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_process_using_post**
> ImportJobResource start_process_using_post(id => $id, publish_now => $publish_now)

Start processing an import job

Will process the CSV file and add new questions asynchronously. The status of the job must be 'VALID'.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 789; # int | The id of the job
my $publish_now = 1; # boolean | Whether the new questions should be published live immediately

eval { 
    my $result = $api_instance->start_process_using_post(id => $id, publish_now => $publish_now);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->start_process_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 
 **publish_now** | **boolean**| Whether the new questions should be published live immediately | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_answer_using_put**
> update_answer_using_put(question_id => $question_id, id => $id, answer => $answer)

Update an answer for a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $question_id = 'question_id_example'; # string | The id of the question
my $id = 'id_example'; # string | The id of the answer
my $answer = WWW::SwaggerClient::Object::AnswerResource->new(); # AnswerResource | The updated answer

eval { 
    $api_instance->update_answer_using_put(question_id => $question_id, id => $id, answer => $answer);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->update_answer_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **string**| The id of the question | 
 **id** | **string**| The id of the answer | 
 **answer** | [**AnswerResource**](AnswerResource.md)| The updated answer | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_question_template_using_put**
> update_question_template_using_put(id => $id, question_template_resource => $question_template_resource)

Update a question template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the template
my $question_template_resource = WWW::SwaggerClient::Object::QuestionTemplateResource->new(); # QuestionTemplateResource | The question template resource object

eval { 
    $api_instance->update_question_template_using_put(id => $id, question_template_resource => $question_template_resource);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->update_question_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **question_template_resource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_question_using_put**
> QuestionResource update_question_using_put(id => $id, question => $question)

Update a question

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 'id_example'; # string | The id of the question
my $question = WWW::SwaggerClient::Object::QuestionResource->new(); # QuestionResource | The updated question

eval { 
    my $result = $api_instance->update_question_using_put(id => $id, question => $question);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->update_question_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the question | 
 **question** | [**QuestionResource**](QuestionResource.md)| The updated question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_using_put**
> ImportJobResource update_using_put(id => $id, request => $request)

Update an import job

Changes should be made before process is started for there to be any effect.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::GamificationTriviaApi;

my $api_instance = WWW::SwaggerClient::GamificationTriviaApi->new();
my $id = 789; # int | The id of the job
my $request = WWW::SwaggerClient::Object::ImportJobResource->new(); # ImportJobResource | The updated job

eval { 
    my $result = $api_instance->update_using_put(id => $id, request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamificationTriviaApi->update_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job | 
 **request** | [**ImportJobResource**](ImportJobResource.md)| The updated job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

