require 'spec_helper'

describe "classrooms/edit" do
  before(:each) do
    @classroom = assign(:classroom, stub_model(Classroom,
      :teacher_id => 1
    ))
  end

  it "renders the edit classroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classrooms_path(@classroom), :method => "post" do
      assert_select "input#classroom_teacher_id", :name => "classroom[teacher_id]"
    end
  end
end
