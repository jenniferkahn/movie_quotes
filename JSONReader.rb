class JSONReader

def initialize(filename)
  @json = String.new
  File.foreach(filename) do |line|
      @json = @json + line
    end
binding.pry
end

def to_hash
  return JSON.parse(@json)
end

end
