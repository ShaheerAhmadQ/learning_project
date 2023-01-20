class FailingJob
  include Sidekiq::Job
  sidekiq_options retry: 0

  def perform(*args)
    sleep 5
    puts "This is a tough job !"

    raise "Ooops encountered  a problem!"
    # By setting the retry to 0 in the sidekiq_options, one a job fails, it is moved to the dead setion
    # We do this so we can later see the failed job on sidekiq web ui, fix it and retry it using the sidekiq web ui
  end
end
