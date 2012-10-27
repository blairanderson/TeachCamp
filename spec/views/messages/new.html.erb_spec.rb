require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :class_id => 1,
      :student_id => 1,
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_class_id", :name => "message[class_id]"
      assert_select "input#message_student_id", :name => "message[student_id]"
      assert_select "textarea#message_message", :name => "message[message]"
    end
  end
end
