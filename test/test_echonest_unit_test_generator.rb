require File.join(File.dirname(__FILE__), "test_generator_helper.rb")


class TestEchonestUnitTestGenerator < Test::Unit::TestCase
  include RubiGen::GeneratorTestHelper

  def setup
    bare_setup
  end

  def teardown
    bare_teardown
  end

  def test_generator_without_options
    name = "blah"
    run_generator('echonest_unit_test', [name], sources)
    
    assert_directory_exists "spec/echonest"
    assert_generated_file "spec/echonest/#{name}_result_spec.rb" do |spec|
    
    end
    
  end

  private
  def sources
    [RubiGen::PathSource.new(:test, File.join(File.dirname(__FILE__),"..", generator_path))
    ]
  end

  def generator_path
    "generators"
  end
end
