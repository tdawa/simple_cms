class DemoController < ApplicationController
  
  layout 'application'
  
  def index
  end

  def hello
  	# render('index')
  	@array = [1,2,3,4,5]
  	@id = params['id'].to_i
  	@page = params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to("http://lynda.com")
  end

  def text_helpers
  end

  def make_error
    #render(:test => "test"
    #render(:test => @parameter.upcase)
    #render(:test => "1" + 1)
  end

  def logging
    logger.debug("This is debug.")
    logger.info("This is info.")
    logger.warn("This is warn.")
    logger.error("This is error.")
    logger.fatal("This is fatal.")
    render(:text => "Logged!")
  end
  
end
