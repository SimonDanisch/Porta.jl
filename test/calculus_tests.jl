Φ(p) = p[1:2]
Φ⁻¹(p) = [p[1]; p[2]; (-p[1] * exp(-p[1]^2 - p[2]^2)) * 4]
p = rand(3)
θ = rand() * 2pi
v = [cos(θ); sin(θ)]
covector = dΦ(Φ, p)

@test_broken size(Φ⁻¹(covector)) != size(p)
@test_broken typeof(Φ⁻¹(covector)) != typeof(p)
@test_broken typeof(dΦξ(Φ, v, p)) != Float64
