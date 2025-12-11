import mysql.connector
from mysql.connector import Error

def conectar():
    try:
        conexao = mysql.connector.connect(
            host="localhost",          
            user="root",               
            password="",               
            database="loja_rotserie_bd"
        )
        return conexao
    except Error as e:
        print("Erro ao conectar ao MySQL:", e)
        return None



def CadastrarItem():
    conexao = conectar()
    if not conexao:
        return

    cursor = conexao.cursor()

    while True:
        nome = input("Digite o nome do produto: ")
        if not nome:
            break
        imagem = input(f"Digite a URL da imagem do produto {nome}: ")
        descricao = input(f"Digite a descrição do produto {nome}: ")
        dt_validade = input(f"Digite a data de validade do produto {nome} (AAAA-MM-DD): ")
        dt_fabricacao = input(f"Digite a data de fabricação do produto {nome} (AAAA-MM-DD): ")

        try:
            cursor.execute(
                "INSERT INTO produtos_tb (nomeProduto, descricao, imagem, dt_Validade, dt_Fabricacao) VALUES (%s, %s, %s, %s, %s)",
                (nome, imagem, descricao,dt_validade, dt_fabricacao)
            )
            conexao.commit()
            print(f"Produto '{nome}' cadastrado com sucesso!")
        except Error as e:
            print("Erro ao cadastrar produto:", e)

        continua = input("Deseja continuar cadastrando itens? (1- Sim / 0- Não) ")
        if continua == "0":
            break

    cursor.close()
    conexao.close()


def VisualizarEstoque():
    conexao = conectar()
    if not conexao:
        return

    cursor = conexao.cursor()
    cursor.execute("SELECT id_produto, nomeProduto, imagem, descricao, dt_Validade, dt_Fabricacao FROM produtos_tb")
    produtos = cursor.fetchall()

    if not produtos:
        print("\nNenhum produto cadastrado.")
    else:
        print("\nProdutos cadastrados:\n")
        for p in produtos:
            print(f"ID: {p[0]}")
            print(f"Nome: {p[1]}")
            print(f"Descrição do produto: {p[3]}")
            print(f"URL da Imagem: {p[2]}")
            print(f"Data de Validade: {p[4]}")
            print(f"Data de Fabricação: {p[5]}")
            print("======================================")

    cursor.close()
    conexao.close()

def VisualizarListaPedidos():
    conexao = conectar()
    if not conexao:
        return

    cursor = conexao.cursor()
    cursor.execute("SELECT id_pedido, id_clientes, status, valorTotal, Rua, numCasa, Bairro, dataPedido, tipoEntrega, observacao FROM pedido_tb")
    pedidos = cursor.fetchall()

    if not pedidos:
        print("\nNenhum pedido cadastrado.")
    else:
        print("\nPedidos cadastrados:\n")
        for p in pedidos:
            print(f"ID Pedido: {p[0]}")
            print(f"ID Cliente: {p[1]}")
            print(f"Status do Pedido: {p[2]}")
            print(f"Valor Total: {p[3]}")
            print(f"Tipo de entrega: {p[8]}")
            if(p[8] == 'entrega'):
                print(f"Rua: {p[4]}")
                print(f"Número da Casa: {p[5]}")
                print(f"Bairro: {p[6]}")
            print(f"Data do Pedido: {p[7]}")
            print(f"Observação: {p[9]}")
            print("======================================")

    cursor.close()
    conexao.close()

def AtualizarItem():
    conexao = conectar()
    if not conexao:
        return

    cursor = conexao.cursor()

    id_produto = input("Digite o ID do produto que deseja atualizar: ")

    cursor.execute("SELECT * FROM produtos_tb WHERE id_produto = %s", (id_produto,))
    produto = cursor.fetchone()

    if not produto:
        print("Produto não encontrado.")
        conexao.close()
        return

    print(f"\nProduto encontrado: {produto[1]}")

    print("O que deseja modificar?")
    print("1) Nome")
    print("2) Descrição")
    print("3) URL da Imagem")
    print("4) Data de Validade")
    print("5) Data de Fabricação")

    opcao = input("Escolha uma opção: ")

    campos = {
        "1": "nomeProduto",
        "2": "descricao",
        "3": "imagem",
        "4": "dt_Validade",
        "5": "dt_Fabricacao"
    }

    if opcao not in campos:
        print("Opção inválida.")
        conexao.close()
        return

    novo_valor = input(f"Digite o novo valor para {campos[opcao]}: ")

    try:
        cursor.execute(f"UPDATE produtos_tb SET {campos[opcao]} = %s WHERE id_produto = %s", (novo_valor, id_produto))
        conexao.commit()
        print("Produto atualizado com sucesso!")
    except Error as e:
        print("Erro ao atualizar produto:", e)

    cursor.close()
    conexao.close()


def ExcluirItem():
    conexao = conectar()
    if not conexao:
        return

    cursor = conexao.cursor()
    id_produto = input("Digite o ID do produto que deseja excluir: ")

    cursor.execute("SELECT nomeProduto FROM produtos_tb WHERE id_produto = %s", (id_produto,))
    produto = cursor.fetchone()

    if not produto:
        print("Produto não encontrado.")
        conexao.close()
        return

    confirma = input(f"Deseja realmente excluir o produto '{produto[0]}'? (1-Sim / 0-Não): ")
    if confirma == "1":
        try:
            cursor.execute("DELETE FROM produtos_tb WHERE id_produto = %s", (id_produto,))
            conexao.commit()
            print("Produto excluído com sucesso!")
        except Error as e:
            print("Erro ao excluir produto:", e)
    else:
        print("Operação cancelada.")

    cursor.close()
    conexao.close()


# ====== MENU PRINCIPAL ======
while True:
    print("\n=== Sistema de Estoque (MySQL) ===")
    print("1) Cadastrar item")
    print("2) Atualizar item")
    print("3) Consultar itens")
    print("4) Excluir item")
    print("5) Visualizar lista de pedidos")
    print("0) Sair")

    opcao = input("Escolha uma opção: ")

    if opcao == "1":
        CadastrarItem()
    elif opcao == "2":
        AtualizarItem()
    elif opcao == "3":
        VisualizarEstoque()
    elif opcao == "4":
        ExcluirItem()
    elif opcao == "5":
        VisualizarListaPedidos()
    elif opcao == "0":
        print("Encerrando o sistema...")
        break
    else:
        print("Opção inválida, tente novamente.")
