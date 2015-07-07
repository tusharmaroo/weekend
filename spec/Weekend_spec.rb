require 'spec_helper'

describe Weekend do
  it 'has a version number' do
    expect(Weekend::VERSION).not_to be nil
  end

  it 'filter weekends' do
  	result = Weekend::Base.filter_weekends(Date.today,Date.today+6)
  	expect(result.count).to eq(5)
  end

  it 'filter week days' do
  	result = Weekend::Base.filter_weekdays(Date.today,Date.today+6)
  	expect(result.count).to eq(2)
  end

  it 'count no of working days' do
  	result = Weekend::Base.no_of_working_days(Date.today,Date.today+6)
  	expect(result).to eq(5)
  end

  it 'count no of weekends' do
  	result = Weekend::Base.no_of_weekends(Date.today,Date.today+6)
  	expect(result).to eq(2)
  end

  it 'count no of sundays' do
    result = Weekend::Base.no_of_sundays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end

  it 'count no of mondays' do
    result = Weekend::Base.no_of_mondays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end

  it 'count no of tuesdays' do
    result = Weekend::Base.no_of_tuesdays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end

  it 'count no of wednesdays' do
    result = Weekend::Base.no_of_wednesdays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end

  it 'count no of thrusdays' do
    result = Weekend::Base.no_of_thrusdays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end

  it 'count no of fridays' do
    result = Weekend::Base.no_of_fridays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end

  it 'count no of saturdays' do
    result = Weekend::Base.no_of_saturdays(Date.today,Date.today+6)
    expect(result).to eq(1)
  end
end
