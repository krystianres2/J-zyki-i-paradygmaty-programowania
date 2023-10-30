zatrudnienie(jan, bezimienny, zelmer, duza_firma, 2000).
zatrudnienie(krzysztof, kowalski, abc_inc, srednia_firma, 2800).
zatrudnienie(maria, kowalczyk, xyz_corp, mala_firma, 3000).
zatrudnienie(tomasz, kaczmarek, quick_services, duza_firma, 2200).
zatrudnienie(ewa, nowak, stellar_solutions, mala_firma, 2700).
zatrudnienie(piotr, lis, global_tech, srednia_firma, 2600).

zadowolony_z_pracy(X) :- zatrudnienie(X, _, _, mala_firma, Z), Z > 2500.
