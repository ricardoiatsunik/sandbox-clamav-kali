## Sandbox Offline com ClamAV no Kali Linux (VirtualBox)
Criação de um ambiente sandbox offline utilizando o Kali Linux em uma VM (VirtualBox), com foco em análise de arquivos suspeitos usando o antivírus ClamAV.

## Ferramentas utilizadas
- ClamAV
- Kali Linux (máquina virtual)
- VirtualBox
- Snapshots e clones
- FreshClam

## Passos realizados
1. Instalação do Kali Linux via VirtualBox.
2. Desativação do compartilhamento de pastas e integrações com o host.
3. Criação de um clone da máquina virtual pra ter uma base segura.
4. Criação de um snapshot antes da análise para poder reverter após o uso.
5. Atualização das definições do ClamAV com freshclam antes de desconectar a rede.
6. Desativação da interface de rede da VM no VirtualBox (modo totalmente offline).
7. Execução da varredura com clamscan no arquivo ou diretório.
8. Reversão ao snap após a análise para garantir a integridade do ambiente.

## Comando básico do ClamAV
Para escanear arquivos ou diretórios:

```
clamscan -r /caminho/do/arquivo_ou_diretorio

```

Opções:
- `-r`: escaneia recursivamente diretórios.

## Boas práticas de segurança
- Mude a senha padrão do Kali (deve ser resistente aos padrões de ataque)
- Utilize snapshots e clones para garantir que qualquer alteração seja revertida.
- Atualize as definições do ClamAV com `freshclam` enquanto a máquina ainda está online, antes de desconectar.

