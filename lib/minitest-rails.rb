require "rails"

module MiniTest
  module Rails
    class Railtie < ::Rails::Railtie
      # config.app_generators.integration_tool :mini_test
      config.app_generators.test_framework :mini_test
      config.app_generators.fallbacks[:mini_test] = :test_unit

      rake_tasks do
        load "minitest/rails/tasks/minitest.rake"
      end
    end
  end
end
