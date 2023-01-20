Running the EasyJob:

EasyJob.perform_async
Sidekiq::Client.push('class' => EasyJob, 'args' => [])
EasyJob.perform_in(1.minute)
EasyJob.perform_at(1.minute.from_now)
