require 'csv'

namespace 'import' do
desc "Import schools"
  task 'schools' => :environment do
    School.destroy_all
    # School.connection.execute("truncate inotary_acts RESTART IDENTITY")
    path = File.join(Rails.root, "db", "master_data", "schools.csv")
    csv_table = CSV.table(path, {:headers => true, :converters => nil, :header_converters => :symbol})
    headers = csv_table.headers
    csv_table.each_with_index do|row, index|
      row.headers.each{ |cell| row[cell] = row[cell].to_s.strip }
      next if row[:name].blank?
      schools = School.new
      schools.name = row[:name]
      if schools.valid?
        schools.save
        puts "#{schools.name}"
      else
        puts "Error! #{schools.errors.full_messages.to_sentence}"
      end
    end
  end

  end