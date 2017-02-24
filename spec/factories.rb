FactoryGirl.define do
  factory(:worker) do
    email('worker@worker.com')
    password('password')
    id(27)
  end

  factory(:user) do
    email('user@user.com')
    password('password')
    id(28)
  end

  factory(:job1) do
    title('Fix Sink')
    description('There are leaky pipes.')
    worker_id(27)
  end
end
