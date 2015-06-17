require 'spec_helper'

describe Weekend do
  it 'has a version number' do
    expect(Weekend::VERSION).not_to be nil
  end

  it 'filter weekends' do
  	result = Weekend.filter_weekends(Date.today,Date.today+6)
  	expect(result.count).to eq(5)
  end

  it 'filter week days' do
  	result = Weekend.filter_weekdays(Date.today,Date.today+6)
  	expect(result.count).to eq(2)
  end

  it 'count no of working days' do
  	result = Weekend.no_of_working_days(Date.today,Date.today+6)
  	expect(result).to eq(5)
  end

  it 'count no of weekends' do
  	result = Weekend.no_of_weekends(Date.today,Date.today+6)
  	expect(result).to eq(2)
  end
end
