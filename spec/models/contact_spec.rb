require 'rails_helper'

describe Contact do
  # nname,email,contentがあれば有効な状態であること
  it "is valid with name, email, content" do
    contact = Contact.new(name: 'hoge', email: 'hoge@yahoo.co.jp', content: 'foge')
    expect(contact).to be_valid
  end


  #nameがなければ無効であること
  it "is invalid without a name" do
    contact = Contact.new(name: '', email: 'hoge@yahoo.co.jp', content: 'foge')
    expect(contact).not_to be_valid
  end

  #emailがなければ無効であること
  it "is invalid without a email" do
    contact = Contact.new(name: 'hoge', email: '', content: 'foge')
    expect(contact).not_to be_valid
  end

  #contentがなければ無効であること
  it "is invalid without a content" do
    contact = Contact.new(name: 'hoge', email: 'hoge@yahoo.co.jp', content: '')
    expect(contact).not_to be_valid
  end
end
