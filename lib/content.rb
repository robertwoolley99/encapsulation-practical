class Content

def initialize
  @diary = []
end

def add_entry(input)
  @diary << input
end

def get_entry(x)
  return @diary[x]
end


end
