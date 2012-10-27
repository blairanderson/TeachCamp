require 'spec_helper'

describe "lessons/new" do
  before(:each) do
    assign(:lesson, stub_model(Lesson,
      :class_id => 1,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new lesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lessons_path, :method => "post" do
      assert_select "input#lesson_class_id", :name => "lesson[class_id]"
      assert_select "input#lesson_name", :name => "lesson[name]"
      assert_select "textarea#lesson_description", :name => "lesson[description]"
    end
  end
end
