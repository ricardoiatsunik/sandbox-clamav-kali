# Configuração segura da VM no VirtualBox

## 1. Criação da VM

- Instalar Kali Linux via ISO no VirtualBox.
- Alocar recursos mínimos: CPU com virtualização ativada, 2 GB RAM, 20 GB de disco.

## 2. Configurações de segurança

- Desativar:
  - Integração da área de transferência (bi-direcional).
  - Arrastar e soltar arquivos.
  - Pastas compartilhadas.
  - Serviços de rede: usar "Placa desconectada" após atualização das definições do ClamAV.

## 3. Uso de clones e snapshots

- Criar um clone da VM após a instalação e atualização do ClamAV.
- Antes de cada análise, criar um snapshot chamado `pre-analise`.
- Após análise, reverter ao snapshot para garantir ambiente limpo.

## 4. Atualização do ClamAV

- Executar `sudo freshclam` com a máquina online para baixar as definições.
- Desconectar a rede após atualização, antes de analisar qualquer arquivo.
