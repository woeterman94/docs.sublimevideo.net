# require 'navigation'

namespace :search do

  desc "Index all document for full-text search"
  task index: :environment do
    class SearchHelper
      include DocsHelper
    end
    search_helper = SearchHelper.new

    stages = argv('stage', %w[stable beta])

    Array(stages).each do |stage|
      documents  = []
      pages_glob = Rails.root.join('app', 'views', 'pages', stage, '**', '*.html.haml')
      Dir[pages_glob].each do |page|
        permalink = page.sub(/#{Rails.root.join('app', 'views', 'pages', stage).to_s}\/([\w\-\/]+)\.html\.haml$/, '\1')
        next if permalink =~ /_/ # skip partial pages

        text = if stage == 'beta' and complex_page = %w[player-faq service-faq troubleshooting].find { |page| page == permalink }
          sub_pages_glob = Rails.root.join('app', 'views', 'pages', stage, complex_page, '_*.html.haml')
          Dir[pages_glob].inject('') { |memo, page| memo += File.new(page).read }
        else
          File.new(page).read
        end

        puts "Adding #{permalink} => #{search_helper.section_and_page_title_from_permalink(stage, permalink)}"
        documents << { docid: permalink, fields: { text: text, title: "#{search_helper.section_and_page_title_from_permalink(stage, permalink)}" } }
      end

      Search.delete_index(stage)
      Search.add_documents(stage, documents)
      Search.add_function(stage, 0, 'relevance')
    end
  end

end

def argv(var_name, default = nil)
  if var = ARGV.detect { |arg| arg =~ /(#{var_name}=)/i }
    var.sub($1, '')
  else
    default
  end
end
