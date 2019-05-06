# frozen_string_literal: true

class AccessTokensController < ApplicationController
  skip_before_action :authorize!,
                     only: %i[create]

  def create
    authenticator = UserAuthenticator.new(params[:code])
    authenticator.perform

    render json: serializer.new(authenticator.access_token), status: :created
  end

  def destroy
    current_user.access_token.destroy
  end

  private

  def serializer
    AccessTokenSerializer
  end
end
