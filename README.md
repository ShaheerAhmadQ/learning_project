# Sidekiq

## Running the EasyJob:
- ```ruby EasyJob.perform_async(args) ```
- ```ruby Sidekiq::Client.push('class' => EasyJob, 'args' => []) ```
- ```ruby EasyJob.perform_in(1.minute, args) ```
- ```ruby EasyJob.perform_at(1.minute.from_now, args) ```

## Manipulating Queues
We can use the command ```ruby Sidekiq::Queue.all ``` to see all the present queues, this gives us an array of all queues
We an get a queue by  using something like this ```ruby q = Sidekiq::Queue.all[0] ```

Now we can perform actions like checking the status of queues, pausing queues, etc.
e.g.
- ```ruby q.paused? ```
- ```ruby q.pause! ```
- ```ruby q.latency ```
- ```ruby q.size ```
- ```ruby q.clear ```
