# frozen_string_literal: true

module Jets::Testing
  module FileFixtureHelper
    def fixture_file_path(*paths)
      File.join(RSpec.configuration.file_fixture_path, *paths)
    end
  end
end

RSpec.configure do |config|
  config.include Jets::Testing::FileFixtureHelper
end