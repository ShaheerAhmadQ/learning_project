class ErrorHandledJob
  include Sidekiq::Job

  def perform(*args)
    puts "ErrorHandledJob started"

    begin
      raise "Ooops encountered  a problem!"
    rescue StandardError => e
      puts "Here we can trigger a mail or notification to notify about the failed job in detail."
    end
  end
end
