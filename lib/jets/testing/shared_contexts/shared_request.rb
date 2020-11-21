# frozen_string_literal: true

shared_context "shared:request" do
  subject { request; response }
end

RSpec.configure do |config|
  config.include_context "shared:request", type: :request
  config.include Jets::Testing::JSONResponse, type: :request
end