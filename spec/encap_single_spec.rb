require "lock"
require "content"
require "encap_single"


describe Binder do
  it "throws an error for add_entry when locked" do
  expect{subject.add_entry("harry")}.to raise_error "diary locked"
  end
end

describe Binder do
  it "add_entry works when unlocked" do
    subject.access
    expect(subject.add_entry("Sample entry")).to be true
  end
end

describe Binder do
  it "throws an error for get_entry when locked" do
    expect{subject.get_entry(0)}.to raise_error "diary locked"
  end
end
#
# describe Binder do
#   it "get_entry works when unlocked" do
#     subject.access
#     subject.add_entry("Testing the diary")
#     expect(subject.get_entry(0)).to eq "Testing the diary"
#   end
# end
# #
# describe SecretDiary do
#   it "expects errors for add_entry when diary has been unlocked and then locked again" do
#     diary = SecretDiary.new
#     diary.unlock("password")
#     diary.lock
#     expect{diary.add_entry("tom")}.to raise_error "diary locked"
#   end
# end
#
# describe SecretDiary do
#   it "expects errors for get_entry when diary has been unlocked and then locked again" do
#     diary = SecretDiary.new
#     diary.unlock("password")
#     diary.add_entry("Dear Diary")
#     diary.lock
#     expect{diary.get_entry(0)}.to raise_error "diary locked"
#   end
# end
