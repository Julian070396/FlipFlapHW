# frozen_string_literal: true

# Module that can be included (mixin) to take and output Yaml data
# The YamlBuddy module provides methods for parsing and formatting YAML data.
module YamlBuddy
  require 'yaml'

  def take_yaml(yaml)
    @data = YAML.safe_load(yaml)
  end

  def to_yaml
    @data.to_yaml
  end
end
