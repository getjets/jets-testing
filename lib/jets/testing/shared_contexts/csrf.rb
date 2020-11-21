# frozen_string_literal: true

shared_context "csrf:on" do
  around do |ex|
    current = ActionController::Base.allow_forgery_protection
    ActionController::Base.allow_forgery_protection = true
    ex.run
    ActionController::Base.allow_forgery_protection = current
  end
end

RSpec.configure do |config|
  config.include_context "csrf:on", csrf: :on
end