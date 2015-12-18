require "temporary_environment/version"

module TemporaryEnvironment
  extend self

  def with_env_variable(key:, value:)
    old_value = ENV[key]
    ENV[key] = value
    yield
    ENV[key] = old_value
  end
end
