# Sidekiq

## Running the EasyJob:
- ``` EasyJob.perform_async(args) ```
- ``` Sidekiq::Client.push('class' => EasyJob, 'args' => []) ```
- ``` EasyJob.perform_in(1.minute, args) ```
- ``` EasyJob.perform_at(1.minute.from_now, args) ```

This can be used to overide the sidekiq options and run the job both in single line
``` EasyJob.set(queue: :easy).perform_async(args)```

## Manipulating Queues
We can use the command ``` Sidekiq::Queue.all ``` to see all the present queues, this gives us an array of all queues
We an get a queue by  using something like this ``` q = Sidekiq::Queue.all[0] ```

Now we can perform actions like checking the status of queues, pausing queues, etc.
e.g.
- ``` q.paused? ```
- ``` q.pause! ```
- ``` q.latency ```
- ``` q.size ```
- ``` q.clear ```
