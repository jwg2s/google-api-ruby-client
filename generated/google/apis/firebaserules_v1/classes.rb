# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module FirebaserulesV1
      
      # Represents a service-defined function call that was invoked during test
      # execution.
      class FunctionCall
        include Google::Apis::Core::Hashable
      
        # Name of the function invoked.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # The arguments that were provided to the function.
        # Corresponds to the JSON property `args`
        # @return [Array<Object>]
        attr_accessor :args
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @args = args[:args] if args.key?(:args)
        end
      end
      
      # `File` containing source content.
      class File
        include Google::Apis::Core::Hashable
      
        # Fingerprint (e.g. github sha) associated with the `File`.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # File name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Textual Content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @name = args[:name] if args.key?(:name)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # The response for FirebaseRulesService.ListReleases.
      class ListReleasesResponse
        include Google::Apis::Core::Hashable
      
        # List of `Release` instances.
        # Corresponds to the JSON property `releases`
        # @return [Array<Google::Apis::FirebaserulesV1::Release>]
        attr_accessor :releases
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @releases = args[:releases] if args.key?(:releases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # `Release` is a named reference to a `Ruleset`. Once a `Release` refers to a
      # `Ruleset`, rules-enabled services will be able to enforce the `Ruleset`.
      class Release
        include Google::Apis::Core::Hashable
      
        # Time the release was updated.
        # Output only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Resource name for the `Release`.
        # `Release` names may be structured `app1/prod/v2` or flat `app1_prod_v2`
        # which affords developers a great deal of flexibility in mapping the name
        # to the style that best fits their existing development practices. For
        # example, a name could refer to an environment, an app, a version, or some
        # combination of three.
        # In the table below, for the project name `projects/foo`, the following
        # relative release paths show how flat and structured names might be chosen
        # to match a desired development / deployment strategy.
        # Use Case     | Flat Name           | Structured Name
        # -------------|---------------------|----------------
        # Environments | releases/qa         | releases/qa
        # Apps         | releases/app1_qa    | releases/app1/qa
        # Versions     | releases/app1_v2_qa | releases/app1/v2/qa
        # The delimiter between the release name path elements can be almost anything
        # and it should work equally well with the release name list filter, but in
        # many ways the structured paths provide a clearer picture of the
        # relationship between `Release` instances.
        # Format: `projects/`project_id`/releases/`release_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must
        # exist the `Release` to be created.
        # Corresponds to the JSON property `rulesetName`
        # @return [String]
        attr_accessor :ruleset_name
      
        # Time the release was created.
        # Output only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
          @name = args[:name] if args.key?(:name)
          @ruleset_name = args[:ruleset_name] if args.key?(:ruleset_name)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # The response for FirebaseRulesService.TestRuleset.
      class TestRulesetResponse
        include Google::Apis::Core::Hashable
      
        # Syntactic and semantic `Source` issues of varying severity. Issues of
        # `ERROR` severity will prevent tests from executing.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebaserulesV1::Issue>]
        attr_accessor :issues
      
        # The set of test results given the test cases in the `TestSuite`.
        # The results will appear in the same order as the test cases appear in the
        # `TestSuite`.
        # Corresponds to the JSON property `testResults`
        # @return [Array<Google::Apis::FirebaserulesV1::TestResult>]
        attr_accessor :test_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
          @test_results = args[:test_results] if args.key?(:test_results)
        end
      end
      
      # Test result message containing the state of the test as well as a
      # description and source position for test failures.
      class TestResult
        include Google::Apis::Core::Hashable
      
        # The set of function calls made to service-defined methods.
        # Function calls are included in the order in which they are encountered
        # during evaluation, are provided for both mocked and unmocked functions,
        # and included on the response regardless of the test `state`.
        # Corresponds to the JSON property `functionCalls`
        # @return [Array<Google::Apis::FirebaserulesV1::FunctionCall>]
        attr_accessor :function_calls
      
        # State of the test.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Debug messages related to test execution issues encountered during
        # evaluation.
        # Debug messages may be related to too many or too few invocations of
        # function mocks or to runtime errors that occur during evaluation.
        # For example: ```Unable to read variable [name: "resource"]```
        # Corresponds to the JSON property `debugMessages`
        # @return [Array<String>]
        attr_accessor :debug_messages
      
        # Position in the `Source` content including its line, column number, and an
        # index of the `File` in the `Source` message. Used for debug purposes.
        # Corresponds to the JSON property `errorPosition`
        # @return [Google::Apis::FirebaserulesV1::SourcePosition]
        attr_accessor :error_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_calls = args[:function_calls] if args.key?(:function_calls)
          @state = args[:state] if args.key?(:state)
          @debug_messages = args[:debug_messages] if args.key?(:debug_messages)
          @error_position = args[:error_position] if args.key?(:error_position)
        end
      end
      
      # The response for FirebaseRulesService.ListRulesets.
      class ListRulesetsResponse
        include Google::Apis::Core::Hashable
      
        # List of `Ruleset` instances.
        # Corresponds to the JSON property `rulesets`
        # @return [Array<Google::Apis::FirebaserulesV1::Ruleset>]
        attr_accessor :rulesets
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rulesets = args[:rulesets] if args.key?(:rulesets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # `Source` is one or more `File` messages comprising a logical set of rules.
      class Source
        include Google::Apis::Core::Hashable
      
        # `File` set constituting the `Source` bundle.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::FirebaserulesV1::File>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # Position in the `Source` content including its line, column number, and an
      # index of the `File` in the `Source` message. Used for debug purposes.
      class SourcePosition
        include Google::Apis::Core::Hashable
      
        # First column on the source line associated with the source fragment.
        # Corresponds to the JSON property `column`
        # @return [Fixnum]
        attr_accessor :column
      
        # Name of the `File`.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Line number of the source fragment. 1-based.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @file_name = args[:file_name] if args.key?(:file_name)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # Issues include warnings, errors, and deprecation notices.
      class Issue
        include Google::Apis::Core::Hashable
      
        # Position in the `Source` content including its line, column number, and an
        # index of the `File` in the `Source` message. Used for debug purposes.
        # Corresponds to the JSON property `sourcePosition`
        # @return [Google::Apis::FirebaserulesV1::SourcePosition]
        attr_accessor :source_position
      
        # The severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Short error description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_position = args[:source_position] if args.key?(:source_position)
          @severity = args[:severity] if args.key?(:severity)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # The request for FirebaseRulesService.TestRuleset.
      class TestRulesetRequest
        include Google::Apis::Core::Hashable
      
        # `Source` is one or more `File` messages comprising a logical set of rules.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::FirebaserulesV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # `Ruleset` is an immutable copy of `Source` with a globally unique identifier
      # and a creation time.
      class Ruleset
        include Google::Apis::Core::Hashable
      
        # Name of the `Ruleset`. The ruleset_id is auto generated by the service.
        # Format: `projects/`project_id`/rulesets/`ruleset_id``
        # Output only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # `Source` is one or more `File` messages comprising a logical set of rules.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::FirebaserulesV1::Source]
        attr_accessor :source
      
        # Time the `Ruleset` was created.
        # Output only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
    end
  end
end
