namespace :articles do

  # rake articles:update_list
  desc "update the list of articles"
  task :update_list => :environment do |task, args|
    elevio_articles = ElevioHelper.call_elevio
    Article.destroy_all
    elevio_articles.each do |elevio_article|
      Article.create(elevio_id: elevio_article["id"], name: elevio_article["title"])
    end
  end

end
