class UsersController < ApplicationController

  def index
  end

  def create
  @foo = Foo.new(foo_params)
  if verify_recaptcha(model: @foo) && @foo.save
    redirect_to @foo
  else
    render 'new'
  end
end

end
