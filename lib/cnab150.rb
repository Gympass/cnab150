require 'cnab150/version'
require 'cnab150/registry'
require 'cnab150/parser'
require 'cnab150/layout'
require 'cnab150/errors'

# The public interface of gem
module Cnab150

  def self.registries(registries)
    file = Array.new

    registries.each do |registry|
      line = String.new
      type = registry[:registry_code]
      mapping = Cnab150::Layout.build(registry[:registry_code]).mapping

      registry.each do |key, value|
        value_to_complete = value.is_a?(Numeric) ? '0' : ' '
        line += value.to_s[0..(mapping[key]-1)].rjust(mapping[key], value_to_complete)
      end

      file << line
    end
    file
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

  def self.header(registries, force=false)
    registries = parse_registries(registries) if force
    find(registries, 'A')
  end

  def self.trailer(registries, force=false)
    registries = parse_registries(registries) if force
    find(registries, 'Z')
  end

  def self.details(registries, force=false)
    registries = parse_registries(registries) if force
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
