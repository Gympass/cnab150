require File.dirname(__FILE__) + '/cnab150/version'
require File.dirname(__FILE__) + '/cnab150/record'
require File.dirname(__FILE__) + '/cnab150/parser'
require File.dirname(__FILE__) + '/cnab150/layout'
require File.dirname(__FILE__) + '/cnab150/errors'

# The public interface of gem
module Cnab150

  def self.records(records)
    file = Array.new

    records.each do |record|
      line = String.new
      type = record[:record_code]
      mapping = Cnab150::Layout.build(record[:record_code]).mapping

      record.each do |key, value|
        value_to_complete = value.is_a?(Numeric) ? '0' : ' '
        line += value.to_s[0..(mapping[key]-1)].rjust(mapping[key], value_to_complete)
      end

      file << line
    end
    file
  end

  def self.parse_records(records)
    records.each_with_object([]) do |r, a|
      a << parse_record(r)
    end
  end

  def self.parse_record(record)
    type = Cnab150::Layout.build(record.chars.first)
    Cnab150::Record.new(record, type)
  end

  def self.header(records, force=false)
    records = parse_records(records) if force
    find(records, 'A')
  end

  def self.trailer(records, force=false)
    records = parse_records(records) if force
    find(records, 'Z')
  end

  def self.details(records, force=false)
    records = parse_records(records) if force
    records.select do |r|
      !(r.record_code.eql?('A') || r.record_code.eql?('Z'))
    end
  end

  def self.select(type, raw)
    records = parse_records(raw)
    records.select do |r|
      r.record_code.eql?(type.to_s.upcase)
    end
  end

  def self.find(records, type)
    records.find { |r| r.record_code.eql?(type) }
  end

  def self.save_to_file(filename, records)
    File.open(filename, 'w'){|f| f.write(string(records))}
  end

  def self.string(records)
    records.join("\r\n") << "\r\n"
  end

end
