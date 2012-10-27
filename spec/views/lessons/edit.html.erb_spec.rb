require 'spec_helper'

describe "lessons/edit" do
  before(:each) do
    @lesson = assign(:lesson, stub_model(Lesson,
      :class_id => 1,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit lesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lessons_path(@lesson), :method => "post" do
      assert_select "input#lesson_class_id", :name => "lesson[class_id]"
      assert_select "input#lesson_name", :name => "lesson[name]"
      assert_select "textarea#lesson_description", :name => "lesson[description]"
    end
  end
end
