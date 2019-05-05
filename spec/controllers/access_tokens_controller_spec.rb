# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AccessTokensController do
  describe '#create' do
    shared_examples_for 'unauthorized_requests' do
      let(:error) do
        {
          'status' => '401',
          'source' => { 'pointer' => '/code' },
          'title' => 'Authentication code is invalid',
          'detail' => 'You must provide a valid token to exchange it for a token.'
        }
      end

      it 'should return 401 status code' do
        subject
        expect(response).to have_http_status(401)
      end

      it 'should return proper error body' do
        subject
        expect(json['errors']).to include(error)
      end
    end

    context 'when invalid code is provided' do
      let(:github_error) { double('Sawyer::Resource', error: 'bad_verification_code') }

      before do
        allow_any_instance_of(Octokit::Client).to receive(:exchange_code_for_token).and_return(github_error)
      end

      subject { post :create, params: { code: 'invalid_code' } }
      it_behaves_like 'unauthorized_requests'
    end

    context 'when no code is provided' do
      subject { post :create, params: { code: '' } }
      it_behaves_like 'unauthorized_requests'
    end

    context 'when success requeset' do
    end
  end
end
