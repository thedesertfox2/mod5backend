require 'nokogiri'
require 'open-uri'
# require 'jquery'
# require 'pry'


class Scraper
    def scrape_trivia_questions
        arr = []
        answers = []
        hash = {}
        tns_url = 'https://www.quiz-maker.com/QG6NWOQ'

        html = open(tns_url)

        doc = Nokogiri::HTML(html)
        
        arr = doc.css('#quiz-tabs')

        (1...137).each do |num| 
            question = arr.css("div[tid=#{num}]").css('div.qp_qi').inner_text
            answers = arr.css("div[tid=#{num}]").css('span').collect(&:text)
            answers.pop
            hash[num] = {'question' => question, 'choices' => answers}
            # qa.each do |qqaa|
            #     puts qqaa
            # end
            
            
            # binding.pry
            
        end
        pp hash
    end
end

scrape = Scraper.new

scrape.scrape_trivia_questions