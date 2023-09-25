# frozen_string_literal: true

# Module that can be included (mixin) to take and output TSV data

# The TsvBuddy module provides methods for parsing and formatting TSV (Tab-Separated Values) data.
module TsvBuddy
  def take_tsv(tsv)
    lines = tsv.split("\n")
    headers = lines[0].split("\t")
    @data = lines[1..].map do |line|
      values = line.split("\t")
      headers.zip(values).to_h
    end
  end

  def to_tsv
    headers = @data.first.keys.join("\t")
    rows = @data.map { |row| row.values.join("\t") }.join("\n")
    "#{headers}\n#{rows}\n"
  end
end
