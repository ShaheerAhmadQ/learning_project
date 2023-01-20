class EasyJob
  include Sidekiq::Job

  def perform(*args)
    sleep 5
    puts "This was an easy job !"
  end
end
