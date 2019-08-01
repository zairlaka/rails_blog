namespace :export do
    desc "Prints Post.all in a seeds.rb way."
    task :seeds_format => :environment do
      Post.order(:id).all.each do |post|
        puts "Country.create(#{post.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      end
    end
  end