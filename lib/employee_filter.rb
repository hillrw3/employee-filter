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
    em_info = []
    @employees.each do |employee_hash|
      first = employee_hash[:first_name]
      last = employee_hash[:last_name]
      title = employee_hash[:title]
      start_date = employee_hash[:start_date]
      em_info << "#{first} #{last} (#{title}) - #{start_date.month}/#{start_date.day}/#{start_date.year}"
    end
    em_info
  end

end