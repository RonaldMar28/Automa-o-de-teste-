# Verificar e ajustar a política de execução
$currentPolicy = Get-ExecutionPolicy
if ($currentPolicy -ne 'Unrestricted') {
    Write-Host "A política de execução atual é '$currentPolicy'. Alterando para 'Unrestricted' temporariamente..."
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
   # Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force
    Write-Host "Política de execução alterada para 'Unrestricted' no escopo atual (Process)."
}

Add-Type -AssemblyName System.Windows.Forms

# Função principal para criar a interface gráfica
function CriarInterface {
    # Criar a janela
    $form = New-Object System.Windows.Forms.Form
    $form.Text = "Menu de Ferramentas de Teste"
    $form.Size = New-Object System.Drawing.Size(800, 400)
    $form.StartPosition = "CenterScreen"

    # Criar botões para cada opção
    $botaoHDtune = New-Object System.Windows.Forms.Button
    $botaoHDtune.Text = "Executar HD Tune"
    $botaoHDtune.Location = New-Object System.Drawing.Point(50, 30)
    $botaoHDtune.Size = New-Object System.Drawing.Size(200, 30)
    $botaoHDtune.Add_Click({
        $hdtunePath = "C:\Teste_main\SW_teste\HDTune_trial\hdtunepro_570_full.exe"
        if (Test-Path $hdtunePath) {
            Start-Process -FilePath $hdtunePath
            [System.Windows.Forms.MessageBox]::Show("HD Tune foi executado, chave de ativacao (3A8A-ECD9-5760-DFEF-242A).")
        } else {
            [System.Windows.Forms.MessageBox]::Show("HD Tune não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoHDtune)

#teste HWiNFO
    $botaoHWinfo = New-Object System.Windows.Forms.Button
    $botaoHWinfo.Text = "Executar HWiNFO"
    $botaoHWinfo.Location = New-Object System.Drawing.Point(50, 70)
    $botaoHWinfo.Size = New-Object System.Drawing.Size(200, 30)
    $botaoHWinfo.Add_Click({
        $hwinfoPath = "C:\Teste_main\SW_teste\HWiNFO64\hwi_735_4940\HWiNFO64.exe"
        if (Test-Path $hwinfoPath) {
            Start-Process -FilePath $hwinfoPath
            [System.Windows.Forms.MessageBox]::Show("HWiNFO foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("HWiNFO não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoHWiNFO)

#Executar o Crystal Disk Info
    $botaoCrystalDiskInfo = New-Object System.Windows.Forms.Button
    $botaoCrystalDiskInfo.Text = "Executar Crystal Disk Info"
    $botaoCrystalDiskInfo.Location = New-Object System.Drawing.Point(500, 70)
    $botaoCrystalDiskInfo.Size = New-Object System.Drawing.Size(200, 30)
    $botaoCrystalDiskInfo.Add_Click({
        $CrystalDiskInfoPath = "C:\Teste_main\SW_teste\Crystal Disk Info\crystaldiskinfo-portable-9-3-2\DiskInfo64.exe"
        if (Test-Path $CrystalDiskInfoPath) {
            Start-Process -FilePath $CrystalDiskInfoPath
            [System.Windows.Forms.MessageBox]::Show("Crystal Disk Info foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("Crystal Disk Info não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoCrystalDiskInfo)


#Executar o Crystal Disk Mark
    $botaoCrystalDiskMark = New-Object System.Windows.Forms.Button
    $botaoCrystalDiskMark.Text = "Executar Crystal Disk Mark"
    $botaoCrystalDiskMark.Location = New-Object System.Drawing.Point(500, 30)
    $botaoCrystalDiskMark.Size = New-Object System.Drawing.Size(200, 30)
    $botaoCrystalDiskMark.Add_Click({
        $diskmarkPath = "C:\Teste_main\SW_teste\CristalDiskMark\CrystalDiskMark8_0_4c\CrystalDiskMark8_0_4c\DiskMark64.exe"
        if (Test-Path $diskmarkPath) {
            Start-Process -FilePath $diskmarkPath
            [System.Windows.Forms.MessageBox]::Show("Crystal Disk Mark foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("Crystal Disk Mark não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoCrystalDiskMark)

#Exeutar o Sleeper
    $botaoSleeper = New-Object System.Windows.Forms.Button
    $botaoSleeper.Text = "Executar Sleeper"
    $botaoSleeper.Location = New-Object System.Drawing.Point(50, 110)
    $botaoSleeper.Size = New-Object System.Drawing.Size(200, 30)
    $botaoSleeper.Add_Click({
        $SleeperPath = "C:\Teste_main\SW_teste\sleeper\sleeper\Sleeper.exe"
        if (Test-Path $SleeperPath) {
            Start-Process -FilePath $sleeperPath
            [System.Windows.Forms.MessageBox]::Show("Sleeper foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("Sleeper não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoSleeper)

  #  $botaoSleeper = New-Object System.Windows.Forms.Button
   # $botaoSleeper.Text = "Executar Sleeper"
    #$botaoSleeper.Location = New-Object System.Drawing.Point(50, 110)
    #$botaoSleeper.Size = New-Object System.Drawing.Size(200, 30)
    #$botaoSleeper.Add_Click({
     #   $installerPath = "C:\Teste_main\SW_teste\sleeper\sleeper\Sleeper.exe"
      #  $installFolder = "C:\main_teste"
       # if (Test-Path $installerPath) {
        #    Start-Process -FilePath $installerPath -ArgumentList "/S", "/D=$installFolder" -Wait
         #   if (Test-Path "$installFolder\sleeper.exe") {
          #      [System.Windows.Forms.MessageBox]::Show("Sleeper instalado e executado.")
           # } else {
            #    [System.Windows.Forms.MessageBox]::Show("Erro: Sleeper não foi instalado corretamente.")
         #   }
     #   } else {
      #      [System.Windows.Forms.MessageBox]::Show("Erro: Instalador não encontrado.")
      #  }
   # })
   # $form.Controls.Add($botaoSleeper)

#Executar o Rebooter
    $botaoRebooter = New-Object System.Windows.Forms.Button
    $botaoRebooter.Text = "Executar Rebooter"
    $botaoRebooter.Location = New-Object System.Drawing.Point(50, 150)
    $botaoRebooter.Size = New-Object System.Drawing.Size(200, 30)
    $botaoRebooter.Add_Click({
        $rebooterPath = "C:\Teste_main\SW_teste\rebooter\rebooter\rebooter.exe"
        if (Test-Path $rebooterPath) {
            Start-Process -FilePath $rebooterPath
            [System.Windows.Forms.MessageBox]::Show("Rebooter foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("Rebooter não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoRebooter)


#Executar o CPU-Z
    $botaoCpuZ = New-Object System.Windows.Forms.Button
    $botaoCpuZ.Text = "Executar CPU-Z"
    $botaoCpuZ.Location = New-Object System.Drawing.Point(50, 190)
    $botaoCpuZ.Size = New-Object System.Drawing.Size(200, 30)
    $botaoCpuZ.Add_Click({
        $CPUPath = "C:\Teste_main\SW_teste\cpu-z_2.09-en\cpuz_x64.exe"
        if (Test-Path $CPUPath) {
            Start-Process -FilePath $CPUPath
            [System.Windows.Forms.MessageBox]::Show("CPU-Z foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("CPU-Z não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoCpuZ)


#Executar o Burnin
    $botaoBurnin = New-Object System.Windows.Forms.Button
    $botaoBurnin.Text = "Executar Burnin"
    $botaoBurnin.Location = New-Object System.Drawing.Point(50, 230)
    $botaoBurnin.Size = New-Object System.Drawing.Size(200, 30)
    $botaoBurnin.Add_Click({
        $BurninPath = "C:\Teste_main\SW_teste\Burnin 10\bitwindows.exe"
        if (Test-Path $BurninPath) {
            Start-Process -FilePath $BurninPath
            [System.Windows.Forms.MessageBox]::Show("Burnin foi executado.")
        } else {
            [System.Windows.Forms.MessageBox]::Show("Burnin não foi encontrado.")
        }
    })
    $form.Controls.Add($botaoBurnin)
  
#Teste de temperatura
    # Teste de temperatura
$botaoTestedeTemperatura = New-Object System.Windows.Forms.Button
$botaoTestedeTemperatura.Text = "Executar Teste de Temperatura"
$botaoTestedeTemperatura.Location = New-Object System.Drawing.Point(500, 110)
$botaoTestedeTemperatura.Size = New-Object System.Drawing.Size(200, 30)

# Evento de clique para o botão
    $botaoTestedeTemperatura.Add_Click({
    $temperaturaPath = "C:\Teste_main\SW_teste\teste_temperatura\temperatura.exe"
    if (Test-Path $temperaturaPath) {
        Start-Process -FilePath $temperaturaPath
        [System.Windows.Forms.MessageBox]::Show("Teste de temperatura foi executado.")
    } else {
        [System.Windows.Forms.MessageBox]::Show("Teste de temperatura não foi encontrado.")
    }
    })

    # Adiciona o botão ao formulário
    $form.Controls.Add($botaoTestedeTemperatura)

#Botao Sair
    $botaoSair = New-Object System.Windows.Forms.Button
    $botaoSair.Text = "Sair"
    $botaoSair.Location = New-Object System.Drawing.Point(500, 270)
    $botaoSair.Size = New-Object System.Drawing.Size(200, 30)
    $botaoSair.Add_Click({ $form.Close() })
    $form.Controls.Add($botaoSair)

    # Exibir a janela
    $form.ShowDialog()
}

# Executar a interface
CriarInterface
