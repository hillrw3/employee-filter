class EmployeeFilter

  def initialize(employees)
    @employees = employees

  end

  def started_before_2006
    before_2006 = []
    @employees.each do |employee_hash|
      before_2006 << employee_hash unless employee_hash[:start_date].year >= 2006
    end
    before_2006
  end

  def all_with_start_date
    @employees.each do |employee_hash|
      first = employee_hash.values_at(:first_name)
      last = employee_hash.values_at(:last_name)
      title = employee_hash.values_at(:title)
      start_date = employee_hash.values_at(:start_date)
      "#{first} #{last} (#{title}) - #{start_date}"
    end
  end

end