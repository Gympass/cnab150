require 'cnab150/version'
require 'cnab150/registry'
require 'cnab150/parser'
require 'cnab150/layout'
require 'cnab150/errors'

# The public interface of gem
module Cnab150

  def self.registries(registries)
    file = Array.new
    # file << mount_header

    registries.each do |registry|
      line = String.new
      type = registry[:registry_code]
      mapping = Cnab150::Layout.const_get(type.upcase).mapping

      registry.each do |key, value|
        line += value.is_a?(Numeric) ? value.to_s.rjust(mapping[key], '0') : value.ljust(mapping[key], ' ')
      end

      file << line
    end
    # file << mount_trailer
    file
  end

  def self.mount_header

  end

  def self.mount_trailer

  end

  def self.parse_registries(registries)
    registries.each_with_object([]) do |r, a|
      a << parse_registry(r)
    end
  end

  def self.parse_registry(registry)
    type = Cnab150::Layout.build(registry.chars.first)
    Cnab150::Registry.new(registry, type)
  end

  def self.header(registries)
    find(registries, 'A')
  end

  def self.trailer(registries)
    find(registries, 'Z')
  end

  def self.details(registries)
    registries.select do |r|
      !(r.registry_code.eql?('A') || r.registry_code.eql?('Z'))
    end
  end

  def self.select(type, raw)
    registries = parse_registries(raw)
    registries.select do |r|
      r.registry_code.eql?(type.to_s.upcase)
    end
  end

  def self.find(registries, type)
    registries.find { |r| r.registry_code.eql?(type) }
  end

  def self.save_to_file(filename, registries)
    File.open(filename, 'w'){|f| f.write(string(registries))}
  end

  def self.string(registries)
    registries.join("\r\n") << "\r\n"
  end

end
