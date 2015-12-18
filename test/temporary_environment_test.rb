# coding: utf-8
require 'test_helper'

class TemporaryEnvironmentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TemporaryEnvironment::VERSION
  end

  def test_temporary_environment_variable
    tmp_env_key   = 'tmp_env_key'
    tmp_env_value = 'valuable_value 😉'

    assert_nil(ENV[tmp_env_key])
    TemporaryEnvironment.with_env_variable(key: tmp_env_key,  value: tmp_env_value) do
      assert_equal(tmp_env_value, ENV[tmp_env_key])
    end
    refute(ENV[tmp_env_key])
  end
end
