require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :class_id => 1,
      :student_id => 1,
      :message => "MyText"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path(@message), :method => "post" do
      assert_select "input#message_class_id", :name => "message[class_id]"
      assert_select "input#message_student_id", :name => "message[student_id]"
      assert_select "textarea#message_message", :name => "message[message]"
    end
  end
end
