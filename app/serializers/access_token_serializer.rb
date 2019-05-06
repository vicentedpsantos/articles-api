# frozen_string_literal: true

class AccessTokenSerializer
  include FastJsonapi::ObjectSerializer
  attributes :token
end
