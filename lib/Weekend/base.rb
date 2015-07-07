class Weekend::Base
  class << self
    #Filtering weekends
    def filter_weekends start_date, end_date
      result(start_date,end_date,[1,2,3,4,5])
    end

    #filter weekdays
    def filter_weekdays start_date, end_date
      result(start_date,end_date,[0,6])
    end

    # total working days(except weekends)
    def no_of_working_days start_date, end_date
      filter_weekends(start_date,end_date).count
    end

    # no of weekends
    def no_of_weekends start_date, end_date
      filter_weekdays(start_date,end_date).count
    end

    def result start_date, end_date, arr_of_days
      ((start_date.to_date)..(end_date.to_date)).to_a.select {|k| arr_of_days.include?(k.wday)}
    end

    #Generates methods like no_of_sundays, no_of_mondays etc
    ["Sunday", "Monday", "Tuesday","Wednesday","Thrusday","Friday","Saturday"].each_with_index do |day,index|
      define_method("no_of_#{day.downcase}s") { |start_date,end_date| result(start_date,end_date,[index]).count }
    end
  end
end
	

