```julia
function myfunction(x::Float64)::Float64 # Added type annotations
  if x > 0
    return x^2
  else
    return -x
  end
end

println(myfunction(5.0))
println(myfunction(-3.0))
```