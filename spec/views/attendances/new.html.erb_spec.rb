require 'spec_helper'

describe "attendances/new" do
  before(:each) do
    assign(:attendance, stub_model(Attendance,
      :student_id => 1,
      :class_id => 1,
      :present => false,
      :tardy => false,
      :excused => false
    ).as_new_record)
  end

  it "renders new attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path, :method => "post" do
      assert_select "input#attendance_student_id", :name => "attendance[student_id]"
      assert_select "input#attendance_class_id", :name => "attendance[class_id]"
      assert_select "input#attendance_present", :name => "attendance[present]"
      assert_select "input#attendance_tardy", :name => "attendance[tardy]"
      assert_select "input#attendance_excused", :name => "attendance[excused]"
    end
  end
end
