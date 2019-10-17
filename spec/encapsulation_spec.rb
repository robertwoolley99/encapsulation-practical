require "encapsulation"

describe SecretDiary do
  it "throws an error for add_entry when locked" do
    diary = SecretDiary.new
    expect{diary.add_entry("harry")}.to raise_error "diary locked"
  end
end

describe SecretDiary do
  it "add_entry works when unlocked" do
    diary = SecretDiary.new
    diary.unlock("password")
    expect(diary.add_entry("Sample entry")).to be true
  end
end

describe SecretDiary do
  it "unlocks the diary when the password is correct" do
  diary = SecretDiary.new
  expect(diary.unlock("password")).to be true
end
end

describe SecretDiary do
  it "throws an error for get_entry when locked" do
    diary = SecretDiary.new
    expect{diary.get_entry(0)}.to raise_error "diary locked"
  end
end

describe SecretDiary do
  it "get_entry works when unlocked" do
    diary = SecretDiary.new
    diary.unlock ("password")
    diary.add_entry("Testing the diary")
    expect(diary.get_entry(0)).to eq "Testing the diary"
  end
end

describe SecretDiary do
  it "expects errors for add_entry when diary has been unlocked and then locked again" do
    diary = SecretDiary.new
    diary.unlock("password")
    diary.lock
    expect{diary.add_entry("tom")}.to raise_error "diary locked"
  end
end

describe SecretDiary do
  it "expects errors for get_entry when diary has been unlocked and then locked again" do
    diary = SecretDiary.new
    diary.unlock("password")
    diary.add_entry("Dear Diary")
    diary.lock
    expect{diary.get_entry(0)}.to raise_error "diary locked"
  end
end
