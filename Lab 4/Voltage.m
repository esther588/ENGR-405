%Calculate and return the vector 𝑣
function v = Voltage(Vo,tau,t)
v = Vo*exp(-t/tau);
end