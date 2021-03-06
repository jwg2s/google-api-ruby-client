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
    module ProximitybeaconV1beta1
      
      class GetInfoForObservedBeaconsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Beacon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertisedId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndoorLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNamespacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBeaconsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Diagnostics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetInfoForObservedBeaconsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeaconAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralIdRegistration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBeaconAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Namespace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeaconInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralIdRegistrationParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Observation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDiagnosticsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetInfoForObservedBeaconsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :beacons, as: 'beacons', class: Google::Apis::ProximitybeaconV1beta1::BeaconInfo, decorator: Google::Apis::ProximitybeaconV1beta1::BeaconInfo::Representation
      
        end
      end
      
      class Beacon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_id, as: 'advertisedId', class: Google::Apis::ProximitybeaconV1beta1::AdvertisedId, decorator: Google::Apis::ProximitybeaconV1beta1::AdvertisedId::Representation
      
          property :provisioning_key, :base64 => true, as: 'provisioningKey'
          property :ephemeral_id_registration, as: 'ephemeralIdRegistration', class: Google::Apis::ProximitybeaconV1beta1::EphemeralIdRegistration, decorator: Google::Apis::ProximitybeaconV1beta1::EphemeralIdRegistration::Representation
      
          property :lat_lng, as: 'latLng', class: Google::Apis::ProximitybeaconV1beta1::LatLng, decorator: Google::Apis::ProximitybeaconV1beta1::LatLng::Representation
      
          property :description, as: 'description'
          property :place_id, as: 'placeId'
          hash :properties, as: 'properties'
          property :status, as: 'status'
          property :indoor_level, as: 'indoorLevel', class: Google::Apis::ProximitybeaconV1beta1::IndoorLevel, decorator: Google::Apis::ProximitybeaconV1beta1::IndoorLevel::Representation
      
          property :beacon_name, as: 'beaconName'
          property :expected_stability, as: 'expectedStability'
        end
      end
      
      class AdvertisedId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :id, :base64 => true, as: 'id'
        end
      end
      
      class IndoorLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :year, as: 'year'
          property :day, as: 'day'
          property :month, as: 'month'
        end
      end
      
      class ListNamespacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :namespaces, as: 'namespaces', class: Google::Apis::ProximitybeaconV1beta1::Namespace, decorator: Google::Apis::ProximitybeaconV1beta1::Namespace::Representation
      
        end
      end
      
      class ListBeaconsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :beacons, as: 'beacons', class: Google::Apis::ProximitybeaconV1beta1::Beacon, decorator: Google::Apis::ProximitybeaconV1beta1::Beacon::Representation
      
          property :total_count, as: 'totalCount'
        end
      end
      
      class Diagnostics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alerts, as: 'alerts'
          property :estimated_low_battery_date, as: 'estimatedLowBatteryDate', class: Google::Apis::ProximitybeaconV1beta1::Date, decorator: Google::Apis::ProximitybeaconV1beta1::Date::Representation
      
          property :beacon_name, as: 'beaconName'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetInfoForObservedBeaconsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :observations, as: 'observations', class: Google::Apis::ProximitybeaconV1beta1::Observation, decorator: Google::Apis::ProximitybeaconV1beta1::Observation::Representation
      
          collection :namespaced_types, as: 'namespacedTypes'
        end
      end
      
      class BeaconAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_name, as: 'attachmentName'
          property :namespaced_type, as: 'namespacedType'
          property :data, :base64 => true, as: 'data'
          property :creation_time_ms, as: 'creationTimeMs'
        end
      end
      
      class EphemeralIdRegistration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_ecdh_public_key, :base64 => true, as: 'serviceEcdhPublicKey'
          property :beacon_identity_key, :base64 => true, as: 'beaconIdentityKey'
          property :initial_eid, :base64 => true, as: 'initialEid'
          property :beacon_ecdh_public_key, :base64 => true, as: 'beaconEcdhPublicKey'
          property :initial_clock_value, as: 'initialClockValue'
          property :rotation_period_exponent, as: 'rotationPeriodExponent'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListBeaconAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::ProximitybeaconV1beta1::BeaconAttachment, decorator: Google::Apis::ProximitybeaconV1beta1::BeaconAttachment::Representation
      
        end
      end
      
      class Namespace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace_name, as: 'namespaceName'
          property :serving_visibility, as: 'servingVisibility'
        end
      end
      
      class AttachmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespaced_type, as: 'namespacedType'
          property :data, :base64 => true, as: 'data'
        end
      end
      
      class BeaconInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_id, as: 'advertisedId', class: Google::Apis::ProximitybeaconV1beta1::AdvertisedId, decorator: Google::Apis::ProximitybeaconV1beta1::AdvertisedId::Representation
      
          collection :attachments, as: 'attachments', class: Google::Apis::ProximitybeaconV1beta1::AttachmentInfo, decorator: Google::Apis::ProximitybeaconV1beta1::AttachmentInfo::Representation
      
          property :beacon_name, as: 'beaconName'
        end
      end
      
      class EphemeralIdRegistrationParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_ecdh_public_key, :base64 => true, as: 'serviceEcdhPublicKey'
          property :min_rotation_period_exponent, as: 'minRotationPeriodExponent'
          property :max_rotation_period_exponent, as: 'maxRotationPeriodExponent'
        end
      end
      
      class DeleteAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_deleted, as: 'numDeleted'
        end
      end
      
      class Observation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_id, as: 'advertisedId', class: Google::Apis::ProximitybeaconV1beta1::AdvertisedId, decorator: Google::Apis::ProximitybeaconV1beta1::AdvertisedId::Representation
      
          property :telemetry, :base64 => true, as: 'telemetry'
          property :timestamp_ms, as: 'timestampMs'
        end
      end
      
      class ListDiagnosticsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :diagnostics, as: 'diagnostics', class: Google::Apis::ProximitybeaconV1beta1::Diagnostics, decorator: Google::Apis::ProximitybeaconV1beta1::Diagnostics::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
    end
  end
end
