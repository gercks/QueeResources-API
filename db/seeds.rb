# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Queeresources-Spreadsheet1.csv'))
file_path = File.path(Rails.root.join('lib', 'seeds', 'Queeresources-Spreadsheet1.csv'))
CSV.foreach(file_path, headers: true, encoding: 'ISO-8859-1') do |row|
  q = Queeresource.new
  q.user_id = 1
  q.name = row['Name']
  q.description = row['Description']
  q.location = row['Location']
  q.website = row['Website']
  q.orgtype = row['OrgType']
  q.popfocus = row['PopFocus']
  q.save
end
