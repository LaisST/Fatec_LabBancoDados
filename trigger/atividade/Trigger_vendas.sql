Create or alter Trigger t_produtoVendido
On VendaProduto
After INSERT As
UPDATE Produto SET quantidadeestoque = quantidadeestoque - (select quantidadevenda from inserted)
    WHERE idproduto = (select idproduto from Inserted)
    
--/////////////////////////////////////////////////////////////////////////////////////////////////////
    
Create or alter Trigger t_vendaCancelada
On VendaProduto
After DELETE As
UPDATE Produto SET quantidadeestoque = quantidadeestoque + (select quantidadevenda from deleted)
    WHERE idproduto = (select idproduto from deleted)