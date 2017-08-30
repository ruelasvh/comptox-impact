# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Home.create(
    title: "EPA Computational Toxicology Impact",
    intro: "EPA Computational Toxicology Research Impact Chemical safety has been a major priority for EPA since it was established in 1970. As the number of chemicals entering the marketplace has increased, evaluating chemicals for potential health effects has become a formidable challenge. Today, some 80,000 chemicals are listed or registered under the Toxic Substance Control Act (TSCA), and hundreds of new chemicals are introduced every year. EPA's computational toxicology research has had successes addressing this challenge by developing scientific approaches that can be used to evaluate thousands of chemicals for potential health effects. Approaches are faster, more efficient, and far less costly than traditional methods. Learn more about how EPA's Computational Toxicology research has made tremendous impacts by exploring the successes achieved and metrics demonstrating those successes.",
    scientists_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/NCCT_Staff.jpg",
    publications_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/Publications.jpg",
    datatools_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/Data_Tools.jpg",
    impact_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/Impact.jpg"
)