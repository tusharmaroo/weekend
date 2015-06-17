require "Weekend/version"

module Weekend
    # Your code goes here...
  	# filter weekends
  	def self.filter_weekends start_date, end_date
  		result(start_date,end_date,[1,2,3,4,5])
    end

  	#filter weekdays
  	def self.filter_weekdays start_date, end_date
  		result(start_date,end_date,[0,6])
  	end

  	# total working days(except weekends)
  	def self.no_of_working_days start_date, end_date
  		filter_weekends(start_date,end_date).count
  	end

  	# no of weekends
  	def self.no_of_weekends start_date, end_date
  		filter_weekdays(start_date,end_date).count
  	end

    def self.result start_date, end_date, arr_of_days
          ((start_date.to_date)..(end_date.to_date)).to_a.select {|k| arr_of_days.include?(k.wday)}
    end
  		# no of sundays/mondays/tuesdays etc

      # all_days = ["Sunday", "Monday", "Tuesday","Wednesday","Thrusday","Friday","Saturday"]

  		# def self.all_days 
  	 #    ["Sunday", "Monday", "Tuesday","Wednesday","Thrusday","Friday","Saturday"]
  	 #  end
      # def self.included(base)
      #   base.extend ClassMethods
      # end

      # module ClassMethods
      #   all_days = ["Sunday", "Monday", "Tuesday","Wednesday","Thrusday","Friday","Saturday"]

    	 #  def no_of_days(day)
    	 #    Weekend.tushar
    	 #  end

      def self.no_of_sundays start_date, end_date
        result(start_date,end_date,[0]).count
      end

     def self.no_of_mondays start_date, end_date
       result(start_date,end_date,[1]).count
     end

     def self.no_of_tuesdays start_date, end_date
       result(start_date,end_date,[2]).count
     end

     def self.no_of_wednesdays start_date, end_date
       result(start_date,end_date,[3]).count
     end

     def self.no_of_thrusdays start_date, end_date
       result(start_date,end_date,[4]).count
     end

     def self.no_of_fridays start_date, end_date
       result(start_date,end_date,[5]).count
     end

     def self.no_of_saturdays start_date, end_date
       result(start_date,end_date,[6]).count
     end

    	  # ["Sunday", "Monday", "Tuesday","Wednesday","Thrusday","Friday","Saturday"].each do |day|
    	  #   method_name = day.to_sym
    	  #   define_method(method_name) { no_of_days }
    	  # end 
      # end 
	
end
