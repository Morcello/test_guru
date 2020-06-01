class AddPassedTestsConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:passed_tests, :user_id, false)
    change_column_null(:passed_tests, :test_id, false)
  end
end
