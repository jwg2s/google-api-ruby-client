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
    module IamV1
      
      # The grantable role query response.
      class QueryGrantableRolesResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching roles.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::IamV1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # The service account sign blob request.
      class SignBlobRequest
        include Google::Apis::Core::Hashable
      
        # The bytes to sign.
        # Corresponds to the JSON property `bytesToSign`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_to_sign
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_to_sign = args[:bytes_to_sign] if args.key?(:bytes_to_sign)
        end
      end
      
      # A role in the Identity and Access Management API.
      class Role
        include Google::Apis::Core::Hashable
      
        # Optional.  A human-readable title for the role.  Typically this
        # is limited to 100 UTF-8 bytes.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The name of the role.
        # When Role is used in CreateRole, the role name must not be set.
        # When Role is used in output and other input such as UpdateRole, the role
        # name is the complete path, e.g., roles/logging.viewer for curated roles
        # and organizations/`ORGANIZATION_ID`/roles/logging.viewer for custom roles.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional.  A human-readable description for the role.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @name = args[:name] if args.key?(:name)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::IamV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` or `joe@example.com`.
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: A Google Apps domain name that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # The grantable role query request.
      class QueryGrantableRolesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of grantable roles.
        # The name follows the Google Cloud Platform resource format.
        # For example, a Cloud Platform project with id `my-project` will be named
        # `//cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
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
      
      # A service account in the Identity and Access Management API.
      # To create a service account, specify the `project_id` and the `account_id`
      # for the account.  The `account_id` is unique within the project, and is used
      # to generate the service account email address and a stable
      # `unique_id`.
      # If the account already exists, the account's resource name is returned
      # in util::Status's ResourceInfo.resource_name in the format of
      # projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL`. The caller can
      # use the name in other methods to access the account.
      # All other methods can identify the service account using the format
      # `projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL``.
      # Using `-` as a wildcard for the project will infer the project from
      # the account. The `account` value can be the `email` address or the
      # `unique_id` of the service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # @OutputOnly The id of the project that owns the service account.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # @OutputOnly. The OAuth2 client id for the service account.
        # This is used in conjunction with the OAuth2 clientconfig API to make
        # three legged OAuth2 (3LO) flows to access the data of Google users.
        # Corresponds to the JSON property `oauth2ClientId`
        # @return [String]
        attr_accessor :oauth2_client_id
      
        # @OutputOnly The unique and stable id of the service account.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Optional. A user-specified description of the service account.  Must be
        # fewer than 100 UTF-8 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Used to perform a consistent read-modify-write.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # @OutputOnly The email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The resource name of the service account in the following format:
        # `projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL``.
        # Requests using `-` as a wildcard for the project will infer the project
        # from the `account` and the `account` value can be the `email` address or
        # the `unique_id` of the service account.
        # In responses the resource name will always be in the format
        # `projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @oauth2_client_id = args[:oauth2_client_id] if args.key?(:oauth2_client_id)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The service account keys list response.
      class ListServiceAccountKeysResponse
        include Google::Apis::Core::Hashable
      
        # The public keys for the service account.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::IamV1::ServiceAccountKey>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Represents a service account key.
      # A service account has two sets of key-pairs: user-managed, and
      # system-managed.
      # User-managed key-pairs can be created and deleted by users.  Users are
      # responsible for rotating these keys periodically to ensure security of
      # their service accounts.  Users retain the private key of these key-pairs,
      # and Google retains ONLY the public key.
      # System-managed key-pairs are managed automatically by Google, and rotated
      # daily without user intervention.  The private key never leaves Google's
      # servers to maximize security.
      # Public keys for all service accounts are also published at the OAuth2
      # Service Account API.
      class ServiceAccountKey
        include Google::Apis::Core::Hashable
      
        # The private key data. Only provided in `CreateServiceAccountKey`
        # responses.
        # Corresponds to the JSON property `privateKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :private_key_data
      
        # The public key data. Only provided in `GetServiceAccountKey` responses.
        # Corresponds to the JSON property `publicKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :public_key_data
      
        # The resource name of the service account key in the following format
        # `projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL`/keys/`key``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The key can be used before this timestamp.
        # Corresponds to the JSON property `validBeforeTime`
        # @return [String]
        attr_accessor :valid_before_time
      
        # Specifies the algorithm (and possibly key size) for the key.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # The key can be used after this timestamp.
        # Corresponds to the JSON property `validAfterTime`
        # @return [String]
        attr_accessor :valid_after_time
      
        # The output format for the private key.
        # Only provided in `CreateServiceAccountKey` responses, not
        # in `GetServiceAccountKey` or `ListServiceAccountKey` responses.
        # Google never exposes system-managed private keys, and never retains
        # user-managed private keys.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_key_data = args[:private_key_data] if args.key?(:private_key_data)
          @public_key_data = args[:public_key_data] if args.key?(:public_key_data)
          @name = args[:name] if args.key?(:name)
          @valid_before_time = args[:valid_before_time] if args.key?(:valid_before_time)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @valid_after_time = args[:valid_after_time] if args.key?(:valid_after_time)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
        end
      end
      
      # The service account key create request.
      class CreateServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        # Which type of key and algorithm to use for the key.
        # The default is currently a 2K RSA key.  However this may change in the
        # future.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # The output format of the private key. `GOOGLE_CREDENTIALS_FILE` is the
        # default output format.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # The service account sign blob response.
      class SignBlobResponse
        include Google::Apis::Core::Hashable
      
        # The signed blob.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        # The id of the key used to sign the blob.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signature = args[:signature] if args.key?(:signature)
          @key_id = args[:key_id] if args.key?(:key_id)
        end
      end
      
      # The service account sign JWT response.
      class SignJwtResponse
        include Google::Apis::Core::Hashable
      
        # The id of the key used to sign the JWT.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # The signed JWT.
        # Corresponds to the JSON property `signedJwt`
        # @return [String]
        attr_accessor :signed_jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signed_jwt = args[:signed_jwt] if args.key?(:signed_jwt)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`.
        # Multiple `bindings` must not be specified for the same `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::IamV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Version of the `Policy`. The default version is 0.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The service account sign JWT request.
      class SignJwtRequest
        include Google::Apis::Core::Hashable
      
        # The JWT payload to sign, a JSON JWT Claim set.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # Audit log information specific to Cloud IAM. This message is serialized
      # as an `Any` type in the `ServiceData` message of an
      # `AuditLog` message.
      class AuditData
        include Google::Apis::Core::Hashable
      
        # The difference delta between two policies.
        # Corresponds to the JSON property `policyDelta`
        # @return [Google::Apis::IamV1::PolicyDelta]
        attr_accessor :policy_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_delta = args[:policy_delta] if args.key?(:policy_delta)
        end
      end
      
      # One delta entry for Binding. Each individual change (only one member in each
      # entry) to a binding will be a separate entry.
      class BindingDelta
        include Google::Apis::Core::Hashable
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The action that was performed on a Binding.
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # A single identity requesting access for a Cloud Platform resource.
        # Follows the same format of Binding.members.
        # Required
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] if args.key?(:role)
          @action = args[:action] if args.key?(:action)
          @member = args[:member] if args.key?(:member)
        end
      end
      
      # The difference delta between two policies.
      class PolicyDelta
        include Google::Apis::Core::Hashable
      
        # The delta for Bindings between two policies.
        # Corresponds to the JSON property `bindingDeltas`
        # @return [Array<Google::Apis::IamV1::BindingDelta>]
        attr_accessor :binding_deltas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_deltas = args[:binding_deltas] if args.key?(:binding_deltas)
        end
      end
      
      # The service account create request.
      class CreateServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # A service account in the Identity and Access Management API.
        # To create a service account, specify the `project_id` and the `account_id`
        # for the account.  The `account_id` is unique within the project, and is used
        # to generate the service account email address and a stable
        # `unique_id`.
        # If the account already exists, the account's resource name is returned
        # in util::Status's ResourceInfo.resource_name in the format of
        # projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL`. The caller can
        # use the name in other methods to access the account.
        # All other methods can identify the service account using the format
        # `projects/`PROJECT_ID`/serviceAccounts/`SERVICE_ACCOUNT_EMAIL``.
        # Using `-` as a wildcard for the project will infer the project from
        # the account. The `account` value can be the `email` address or the
        # `unique_id` of the service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :service_account
      
        # Required. The account id that is used to generate the service account
        # email address and a stable unique id. It is unique within a project,
        # must be 6-30 characters long, and match the regular expression
        # `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
          @account_id = args[:account_id] if args.key?(:account_id)
        end
      end
      
      # The service account list response.
      class ListServiceAccountsResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set
        # ListServiceAccountsRequest.page_token
        # to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching service accounts.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::IamV1::ServiceAccount>]
        attr_accessor :accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @accounts = args[:accounts] if args.key?(:accounts)
        end
      end
    end
  end
end
