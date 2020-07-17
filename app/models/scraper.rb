require 'nokogiri'
require 'open-uri'
# require 'jquery'
# require 'pry'


class Scraper
    def scrape_trivia_questions
        arr = []
        answers = []
        hash = {}
        trivia_url = 'https://www.quiz-maker.com/QG6NWOQ'
        

        html1 = open(trivia_url)
        

        doc = Nokogiri::HTML(html1)
        

        arr = doc.css('#quiz-tabs')
        
        

        (1...137).each do |num| 
            question = arr.css("div[tid=#{num}]").css('div.qp_qi').inner_text
            answers = arr.css("div[tid=#{num}]").css('span').collect(&:text)

            
            answers.pop
            hash[num] = {'question' => question, 'choices' => answers}
            # qa.each do |qqaa|
            #     puts qqaa
            # end
            # [rid=#{num}]
            
            # binding.pry
            
        end
        # pp hash
        return hash
    end

end



