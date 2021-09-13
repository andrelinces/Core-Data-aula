//
//  ViewController.swift
//  Core Data aula
//
//  Created by Andre Linces on 12/09/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let contex = appDelegate.persistentContainer.viewContext
        /*
        //criar requisicao
        let produto = NSEntityDescription.insertNewObject(forEntityName: "Produtos", into: contex)
        
        produto.setValue("roxo", forKey: "cor")
        produto.setValue("acai,rico em vitaminas, muito consumido no Brasil", forKey: "descricao")
        produto.setValue("7,00", forKey: "preco")
        
        //salvar (Persistir)os dados
        
        do {
            try contex.save()
            print("produto salvo corretamente")
        } catch  {
            print("Erro ao salvar produto")
        }
       */
        
        //criar uma requisicao
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Produtos")
        
        
        
        do {
            let produtos = try contex.fetch(requisicao)
            
            if produtos.count > 0 {
                
                for produtos in produtos as! [NSManagedObject]{
                    
                    if let corProduto = produtos.value(forKey: "cor"){
                        print(corProduto)
                    }
                    
                }
                
            }
            
        } catch  {
            print("Erro ao listar os produtos")
        }
        
    }
    
}
    
    /*
    
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //context objeto responsavel por manipular os dados, permitindo salvar, listar, remover.
        let context = appDelegate.persistentContainer.viewContext
        
        //criar uma requisição
        let requisacao = NSFetchRequest<NSFetchRequestResult>(entityName: "Usuario")
        
        do {
            let usuarios = try context.fetch(requisacao)
            
            if usuarios.count > 0 {
                
                for usuario in usuarios as! [NSManagedObject]{
                    
                    if let nomeUsuario = usuario.value(forKey: "nome"){
                        print(nomeUsuario)
                    }
                }
                
            }else{
                print("Nenhum usuário encontrado")
            }
            
        } catch  {
            print("Erro ao recuperar os usuários")
        }
        
        //Criar entidade
        /*
        let usuario = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
        
        //configura objeto
        usuario.setValue("Sr Xuanxao", forKey: "nome")
        usuario.setValue(45, forKey: "idade")
        usuario.setValue("srxuanxao", forKey: "login")
        usuario.setValue("6789", forKey: "senha")
        
        //salvar (Persistir)os dados
        
        do {
            try context.save()
            print("Dados salvo com sucesso!")
        } catch  {
            print("Erro ao salvar os dados")
        }
        */
      
    }
     */



