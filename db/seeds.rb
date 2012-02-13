# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Event.create(:title => "Strasbourg.new : Apéro Ruby Strasbourg #1",
                      :address => "7 rue du Vieux Marché aux Poissons",
                      :hour_begin => Time.parse("19:00"),
                      :hour_end => Time.parse("22:00"),
                      :date_begin => Date.new(2011, 9, 27))
Event.create(:title => "Apéro Ruby Strasbourg #2",
                      :address => "30, rue des Tonneliers",
                      :hour_begin => Time.parse("19:00"),
                      :hour_end => Time.parse("22:00"),
                      :date_begin => Date.new(2011, 10, 25))
Event.create(:title => "Apéro Ruby Strasbourg #3",
                      :address => "8 rue faubourg national",
                      :hour_begin => Time.parse("19:00"),
                      :hour_end => Time.parse("22:00"),
                      :date_begin => Date.new(2011, 11, 29))
Event.create(:title => "Apéro Ruby Strasbourg #4",
                      :address => "7 rue du Vieux Marché aux Poissons",
                      :description => "1er apéro Ruby Strasbourg en cette nouvelle année 2012, on espère vous voir nombreux !
                      Et pour pimenter un peu les apéros Ruby, nous allons désormais accueillir des lightning talks : 1 ou 2 rapides présentations de 10-15min sur un sujet en rapport avec Ruby, bien sûr ^^

                      Les volontaires désireux de se prêter à ce petit exercice sont priés de se faire connaître rapidement (ainsi que le sujet de leur talk) :)",
                      :hour_begin => Time.parse("19:00"),
                      :hour_end => Time.parse("22:00"),
                      :date_begin => Date.new(2011, 11, 29),
                      :link => "https://www.facebook.com/events/153381821442561/")