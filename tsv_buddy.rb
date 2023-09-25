# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  def take_tsv(tsv)
    @data = []
    lines = tsv.split("\n")
    headers = lines[0].split("\t")

    lines[1..-1].each do |line|
      values = line.split("\t")
      hash = Hash[headers.zip(values)]
      @data << hash
    end
  end

  def to_tsv
    headers = @data.first.keys.join("\t")
    rows = @data.map { |hash| hash.values.join("\t") }.join("\n")
    "#{headers}\n#{rows}"
  end
end
