@echo off
echo ================================
echo   OpenAI Whisper - Transcricao
echo ================================

:: Caminho da pasta onde está o .bat
set "pasta_bat=%~dp0"

:: Verifica se recebeu um arquivo
if "%~1"=="" (
    echo Arraste um arquivo de audio ou video em cima deste arquivo .bat
    pause
    exit
)

:: Caminho completo do arquivo de audio/video
set "arquivo=%~1"

:: Nome do arquivo sem extensao
for %%F in ("%arquivo%") do set "nome_arquivo=%%~nF"

:: Executa o Whisper, salvando na pasta do .bat
python -m whisper "%arquivo%" --language Portuguese --task transcribe --output_format txt --output_dir "%pasta_bat%"

echo ================================
echo   Transcricao concluida!
echo ================================
echo Arquivo salvo em: %pasta_bat%
pause
