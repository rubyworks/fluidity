module Fluidity

  # Access to project metadata as constants.
  def self.const_missing(name)
    key = name.to_s.downcase
    index[key] || super(name)
  end

  # Access to project metadata.
  def self.index
    @metadata ||= (
      require 'yaml'
      YAML.load_file(File.dirname(__FILE__) + '/../fluidity.yml')
    )
  end

end
