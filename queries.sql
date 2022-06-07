CREATE TABLE IF NOT EXISTS produtos(
  id BIGSERIAL PRIMARY KEY,
  nome VARCHAR(128) NOT NULL UNIQUE,
  categoria VARCHAR(128) NOT NULL,
  price NUMERIC(100, 2) NOT NULL);


ALTER TABLE produtos 
  RENAME price TO preco;
  
  
/* Foi adicionado aqui os produtos, limpei do código pra não ficar muito grande */


DELETE FROM produtos
  WHERE nome = 'Webcam' 
  RETURNING *;
  
 
UPDATE produtos
  SET preco = '1899.99'
  WHERE nome = 'Cama de casal'
  RETURNING *;
  
  
SELECT * FROM produtos;


SELECT * FROM produtos WHERE preco > 1000;


SELECT * FROM produtos where nome ILIKE 'T%';


SELECT * FROM produtos where nome ILIKE '%GAMER%';


SELECT COUNT(*) FROM produtos;


SELECT MAX(preco) item_mais_caro FROM produtos;


SELECT AVG(preco) FROM produtos;


SELECT AVG(preco) FROM produtos WHERE nome ILIKE 'M%';


SELECT SUM(preco) FROM produtos;


SELECT * FROM produtos ORDER BY nome;


SELECT * FROM produtos ORDER BY preco DESC;


SELECT LOWER(categoria), COUNT(*) FROM produtos GROUP BY LOWER(categoria);


SELECT LOWER(categoria), AVG(preco) FROM produtos GROUP BY LOWER(categoria);


SELECT LOWER(categoria), MIN(preco) FROM produtos GROUP BY LOWER(categoria);


SELECT LOWER(categoria), COUNT(*) FROM produtos WHERE preco < 1000 GROUP BY LOWER(categoria);