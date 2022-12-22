#=
The Closure Example in JULIA :
def make(x):
 cnt=0
 def anon ():
 	nonlocal cnt
 	cnt=cnt+x
	return cnt
 def set():
	nonlocal cnt
	cnt=0
	return cnt
 return (anon,set)

a) What is returned by:
	R=make(2)
	S=make (4)
b) What are the values of the following?
R[0]()
R[0]()
R[1]()
S[0]()
R[0]()
=#


function make(x)
  cnt = 0
  
  function anon()
    cnt += x
    return cnt
  end

  function set()
    cnt=0
    return cnt
  end
  return (anon, set)
end

R=make(2)
S=make(4)

println(R[1]())
println(R[1]())
println(R[2]())
println(S[1]())
println(R[1]())


