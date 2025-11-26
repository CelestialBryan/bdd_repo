Select
    c.id_consulta‚
    c.data AS data_consulta‚
    p.nome AS nome_pet‚
    p.especie‚
    cli.nome AS nome_cliente‚
    cli.telefone AS telefone_cliente‚
    v.nome
FROM consulta c
    Join Pet p
        ON p.id_pet = c.id_pet
    Join cliente cli
        ON cli.id_cliente = p.id_cliente
    Join veterinario
        ON v.id_veterinario = c.id_veterinario

---filtra por especie
        
Select
    p.nome AS nome_pet‚
    p.especie‚
    c.data AS data_consulta
FROM consulta c
    Join PET p
    ON p_id_pet = c.id_pet
    Where p.especie =`gato`
    
---filtrar por Group BV

Select
    v.nome AS nome_veterinario‚
    COUNT(c.id_consulta) AS total_consultas
FROM consulta c
JOIN veterinario v
ON v.id_veterinario = c.id_veterinario
Group by v.nome;

---filtrar por quantidade de pets por clientes

Select
    cli.nome AS nome_cliente‚
    COUNT(p.id_pet) AS total_pets
FROM client cli
LEFT JOIN Pet p
ON p.id_cliente cli.id_cliente
Group by cli.nome;

---Having

Select
    v.nome AS nome_veterinario‚
    COUNT(c.id.consulta) AS total_consulta
FROM consulta c
JOIN veterinario v
ON v.id_veterinario = c.id_veterinario
Group by v.nome;
HAVING COUNT(c.id_consulta) > 1;

---Remover duplicadas

Select * from cliente;

select distinct nome
From cliente;

Delete From cliente
where id_cliente = 0;
