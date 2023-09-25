# frozen_string_literal: true

# Require the necessary files
require_relative 'tsv_buddy'
require_relative 'yaml_buddy'

# The FlipFlap class is responsible for converting data between TSV and YAML formats.
# It includes the TsvBuddy and YamlBuddy modules to handle the conversions.
class FlipFlap
  include TsvBuddy
  include YamlBuddy

  def self.input_formats
    %w[tsv yaml]
  end

  attr_reader :data
end
