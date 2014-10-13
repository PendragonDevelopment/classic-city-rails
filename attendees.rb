require 'csv'

File.open("list.html", "w") do |report|
  report.puts "<!DOCTYPE html>"
  report.puts '<html lang="en">'

  report.puts '<head>'

  report.puts '<meta charset="utf-8">'
  report.puts '<meta http-equiv="X-UA-Compatible" content="IE=edge">'
  report.puts '<meta name="viewport" content="width=device-width, initial-scale=1">'
  report.puts '<meta name="description" content="">'
  report.puts '<meta name="author" content="">'
  report.puts '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">'
  report.puts '</head>'
  report.puts "<body>"
  report.puts "<div class='container'>"
  report.puts "<table class='table table-hover table-striped table-bordered'>"
  CSV.foreach('attendees.csv') do |row|
    report.puts "<tr>"
    report.puts "<td>#{row[1]}</td>"
    report.puts "<td>#{row[2]}</td>"
    report.puts "<td>#{row[5]}</td>"
    report.puts "<td>#{row[6]}</td>"
    report.puts "</tr>"
  end
  report.puts "</table>"
  report.puts "</div>"
  report.puts "</body>"
  report.puts '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>'
  report.puts "</html>"
end