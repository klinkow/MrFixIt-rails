FactoryGirl.define do
  factory(:worker) do
    email('worker1@worker.com')
    password('password')
  end

  factory(:user) do
    email('user@user.com')
    password('password')
    id(28)
  end

  factory(:job) do
    title('Fix Sink')
    description('There are leaky pipes.')
  end
end
