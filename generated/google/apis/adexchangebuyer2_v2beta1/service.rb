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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module Adexchangebuyer2V2beta1
      # Ad Exchange Buyer API II
      #
      # Accesses the latest features for managing Ad Exchange accounts, Real-Time
      #  Bidding configurations and auction metrics, and Marketplace programmatic deals.
      #
      # @example
      #    require 'google/apis/adexchangebuyer2_v2beta1'
      #
      #    Adexchangebuyer2 = Google::Apis::Adexchangebuyer2V2beta1 # Alias the module
      #    service = Adexchangebuyer2::AdExchangeBuyerIIService.new
      #
      # @see https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/
      class AdExchangeBuyerIIService < Google::Apis::Core::BaseService
        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        def initialize
          super('https://adexchangebuyer.googleapis.com/', '')
        end
        
        # Gets a creative.
        # @param [String] account_id
        #   The account the creative belongs to.
        # @param [String] creative_id
        #   The ID of the creative to retrieve.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_creative(account_id, creative_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/creatives/{creativeId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Creative
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watches a creative. Will result in push notifications being sent to the
        # topic when the creative changes status.
        # @param [String] account_id
        #   The account of the creative to watch.
        # @param [String] creative_id
        #   The creative ID to watch for status changes.
        #   Specify "-" to watch all creatives under the above account.
        #   If both creative-level and account-level notifications are
        #   sent, only a single notification will be sent to the
        #   creative-level notification topic.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::WatchCreativeRequest] watch_creative_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_creative(account_id, creative_id, watch_creative_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}:watch', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::WatchCreativeRequest::Representation
          command.request_object = watch_creative_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a creative.
        # @param [String] account_id
        #   The account that this creative belongs to.
        #   Can be used to filter the response of the
        #   creatives.list
        #   method.
        # @param [String] creative_id
        #   The buyer-defined creative ID of this creative.
        #   Can be used to filter the response of the
        #   creatives.list
        #   method.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Creative] creative_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_creative(account_id, creative_id, creative_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/creatives/{creativeId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Creative
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists creatives.
        # @param [String] account_id
        #   The account to list the creatives from.
        #   Specify "-" to list all creatives the current user has access to.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListCreativesResponse.next_page_token
        #   returned from the previous call to 'ListCreatives' method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer creatives than requested
        #   (due to timeout constraint) even if more are available via another call.
        #   If unspecified, server will pick an appropriate default.
        #   Acceptable values are 1 to 1000, inclusive.
        # @param [String] query
        #   An optional query string to filter creatives. If no filter is specified,
        #   all active creatives will be returned.
        #   Supported queries are:
        #   <ul>
        #   <li>accountId=<i>account_id_string</i>
        #   <li>creativeId=<i>creative_id_string</i>
        #   <li>dealsStatus: `approved, conditionally_approved, disapproved,
        #   not_checked`
        #   <li>openAuctionStatus: `approved, conditionally_approved, disapproved,
        #   not_checked`
        #   <li>attribute: `a numeric attribute from the list of attributes`
        #   <li>disapprovalReason: `a reason from DisapprovalReason
        #   </ul>
        #   Example: 'accountId=12345 AND (dealsStatus:disapproved AND disapprovalReason:
        #   unacceptable_content) OR attribute:47'
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_creatives(account_id, page_token: nil, page_size: nil, query: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/creatives', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListCreativesResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a creative.
        # @param [String] account_id
        #   The account that this creative belongs to.
        #   Can be used to filter the response of the
        #   creatives.list
        #   method.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Creative] creative_object
        # @param [String] duplicate_id_mode
        #   Indicates if multiple creatives can share an ID or not. Default is
        #   NO_DUPLICATES (one ID per creative).
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_creative(account_id, creative_object = nil, duplicate_id_mode: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Creative::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Creative
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['duplicateIdMode'] = duplicate_id_mode unless duplicate_id_mode.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops watching a creative. Will stop push notifications being sent to the
        # topics when the creative changes status.
        # @param [String] account_id
        #   The account of the creative to stop notifications for.
        # @param [String] creative_id
        #   The creative ID of the creative to stop notifications for.
        #   Specify "-" to specify stopping account level notifications.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::StopWatchingCreativeRequest] stop_watching_creative_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_watching_creative(account_id, creative_id, stop_watching_creative_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}:stopWatching', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::StopWatchingCreativeRequest::Representation
          command.request_object = stop_watching_creative_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Associate an existing deal with a creative.
        # @param [String] account_id
        #   The account the creative belongs to.
        # @param [String] creative_id
        #   The ID of the creative associated with the deal.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::AddDealAssociationRequest] add_deal_association_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_deal_association(account_id, creative_id, add_deal_association_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:add', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::AddDealAssociationRequest::Representation
          command.request_object = add_deal_association_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove the association between a deal and a creative.
        # @param [String] account_id
        #   The account the creative belongs to.
        # @param [String] creative_id
        #   The ID of the creative associated with the deal.
        # @param [Google::Apis::Adexchangebuyer2V2beta1::RemoveDealAssociationRequest] remove_deal_association_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_deal_association(account_id, creative_id, remove_deal_association_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:remove', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::RemoveDealAssociationRequest::Representation
          command.request_object = remove_deal_association_request_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Empty::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Empty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all creative-deal associations.
        # @param [String] account_id
        #   The account to list the associations from.
        #   Specify "-" to list all creatives the current user has access to.
        # @param [String] creative_id
        #   The creative ID to list the associations from.
        #   Specify "-" to list all creatives under the above account.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListDealAssociationsResponse.next_page_token
        #   returned from the previous call to 'ListDealAssociations' method.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer associations than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] query
        #   An optional query string to filter deal associations. If no filter is
        #   specified, all associations will be returned.
        #   Supported queries are:
        #   <ul>
        #   <li>accountId=<i>account_id_string</i>
        #   <li>creativeId=<i>creative_id_string</i>
        #   <li>dealsId=<i>deals_id_string</i>
        #   <li>dealsStatus:`approved, conditionally_approved, disapproved,
        #   not_checked`
        #   <li>openAuctionStatus:`approved, conditionally_approved, disapproved,
        #   not_checked`
        #   </ul>
        #   Example: 'dealsId=12345 AND dealsStatus:disapproved'
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_creative_deal_associations(account_id, creative_id, page_token: nil, page_size: nil, query: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListDealAssociationsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['creativeId'] = creative_id unless creative_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a client buyer with a given client account ID.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client(account_id, client_account_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the clients for the current sponsor buyer.
        # @param [String] account_id
        #   Unique numerical account ID of the sponsor buyer to list the clients for.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientsResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.clients.list method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer clients than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_clients(account_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing client buyer.
        # @param [String] account_id
        #   Unique numerical account ID for the buyer of which the client buyer
        #   is a customer; the sponsor buyer to update a client for. (required)
        # @param [String] client_account_id
        #   Unique numerical account ID of the client to update. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Client] client_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_client(account_id, client_account_id, client_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new client buyer.
        # @param [String] account_id
        #   Unique numerical account ID for the buyer of which the client buyer
        #   is a customer; the sponsor buyer to create a client for. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::Client] client_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_client(account_id, client_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/clients', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::Client
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the known client users for a specified
        # sponsor buyer account ID.
        # @param [String] account_id
        #   Numerical account ID of the sponsor buyer of the client to list users for.
        #   (required)
        # @param [String] client_account_id
        #   The account ID of the client buyer to list users for. (required)
        #   You must specify either a string representation of a
        #   numerical account identifier or the `-` character
        #   to list all the client users for all the clients
        #   of a given sponsor buyer.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientUsersResponse.nextPageToken
        #   returned from the previous call to the
        #   accounts.clients.users.list method.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer clients than requested.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_client_users(account_id, client_account_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientUsersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer
        #   that the user to be retrieved is associated with. (required)
        # @param [String] user_id
        #   Numerical identifier of the user to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client_user(account_id, client_account_id, user_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUser
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing client user.
        # Only the user status can be changed on update.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user to be retrieved
        #   is associated with. (required)
        # @param [String] user_id
        #   Numerical identifier of the user to retrieve. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] client_user_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_client_user(account_id, client_account_id, user_id, client_user_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.request_object = client_user_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUser
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and sends out an email invitation to access
        # an Ad Exchange client buyer account.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user
        #   should be associated with. (required)
        # @param [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] client_user_invitation_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_client_invitation(account_id, client_account_id, client_user_invitation_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations', options)
          command.request_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.request_object = client_user_invitation_object
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user invitation.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer that the user invitation
        #   to be retrieved is associated with. (required)
        # @param [String] invitation_id
        #   Numerical identifier of the user invitation to retrieve. (required)
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_client_invitation(account_id, client_account_id, invitation_id, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.params['invitationId'] = invitation_id unless invitation_id.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the client users invitations for a client
        # with a given account ID.
        # @param [String] account_id
        #   Numerical account ID of the client's sponsor buyer. (required)
        # @param [String] client_account_id
        #   Numerical account ID of the client buyer to list invitations for.
        #   (required)
        #   You must either specify a string representation of a
        #   numerical account identifier or the `-` character
        #   to list all the invitations for all the clients
        #   of a given sponsor buyer.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        #   Typically, this is the value of
        #   ListClientUserInvitationsResponse.nextPageToken
        #   returned from the previous call to the
        #   clients.invitations.list
        #   method.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer clients than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_client_invitations(account_id, client_account_id, page_token: nil, page_size: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations', options)
          command.response_representation = Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse::Representation
          command.response_class = Google::Apis::Adexchangebuyer2V2beta1::ListClientUserInvitationsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['clientAccountId'] = client_account_id unless client_account_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['key'] = key unless key.nil?
        end
      end
    end
  end
end
