class Binder

def initialize
@content = Content.new
@control = Lock.new
end

def access
  @control.unlock
end

def add_entry(input)
  return fail "diary locked" unless @control.lock_status == false
  @content.add_entry(input)
  return true
end

def get_entry(x)
  return fail "diary locked" unless @control.lock_status == false
  @content.get_entry(x)
  return true
end

end
