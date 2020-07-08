using DifferentialEquations
f(u,p,t) = 3*u
u0 = 5.7
tspan = (0.0,1.0)
prob = ODEProblem(f,u0,tspan)
sol = solve(prob)
using Plots; gr()
plot(sol,linewidth=5,title="Solution to the linear ODE",
     xaxis="X",yaxis="Y(X)",label="Julia solution")
plot!(sol.t, t->5.7*exp(3t),lw=3,ls=:dash,label="Analytical Solution")

#savefig("C:\\ODE2.png")
