class TipsController < ApplicationController
  def new
  	@tip = Tip.new
  end
  def show
  end
  def results
  	@tips = math
  end
def math
	check = false
  	bill = Tip.pluck(:totalbill)
  	bill = bill[-1]
  	
	if bill.is_number? == true
		bill = bill.to_f
		check = true
		if bill < 0
		finalstring = "Please enter a non-negative number."
		check = false
		else
		end
	else
		finalstring = "Please enter a valid number."
	end
	checktwo = false
	percent = Tip.pluck(:percent)
	percent = percent[-1]
	if percent =~ /^-?[0-9]+$/
		percent = percent.to_f
		checktwo = true
		if percent < 0
		finalstring = "Please enter a non-negative number."
		checktwo = false
		else
		end
	else
		finalstring = "Please enter a valid number."
	end
if check == true && checktwo == true
tip = bill*(percent/100)
total = bill + tip
total = format("$%.2f", total)
finalstring = "Your total is #{total}"
else
end
return finalstring
end
def update
	@article = Tip.find(params[:id])

	if @tip.update(tip_params)
		redirect_to @tip
	else
		render 'new'
		end
	end
  def tip_params
      params.require(:tip).permit(:totalbill, :percent)
  end
  def create
   @tip = Tip.new(tip_params)
	if @tip.save
  redirect_to :action => 'results'
	else
  render :action => 'questions'
	end
  end
end
class String
  def is_number?
    true if Float(self) rescue false
  end
end