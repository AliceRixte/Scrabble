open OUnit2
       
class virtual player (a_name:string) (a_score:int) (a_letters:string)=
	object (self)
	  val name = a_name
	  val mutable score = a_score
	  val mutable letters = a_letters
	  val mutable give_up = false
      	  method virtual play : string -> unit
	  method virtual is_human : bool
	  method get_name = name
	  method get_letters = letters
	  method get_score = score
	  method given_up = give_up
			  
	 
	end

class humanPlayer (a_name:string) (a_score:int) (a_letters:string)  =
object (self)
  inherit player a_name a_score a_letters
  method is_human = true
  method play s = print_string s
end	 
