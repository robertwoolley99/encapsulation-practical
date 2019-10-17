class SecretDiary

def initialize
@diary = []
@password = "password"
@lock_status = "locked"
end


def get_entry(index)
  return fail "diary locked" unless @lock_status == "unlocked"
  output = @diary[index]
  return output
end



def add_entry(entry)
  return fail "diary locked" unless @lock_status == "unlocked"
  @diary.push(entry)
  return true
end

def unlock(password)
  return fail "access denied" unless password == @password
  @lock_status = "unlocked"
  return true
end

def lock
  @lock_status = "locked"
end

end
