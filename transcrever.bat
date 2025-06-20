@echo off
echo ================================
echo   OpenAI Whisper - Transcricao
echo ================================

:: Verifica se recebeu um arquivo
if "%~1"=="" (
    echo Arraste um arquivo de audio ou video em cima deste arquivo .bat
    pause
    exit
)

:: Caminho do arquivo
set "arquivo=%~1"

:: Executa o Whisper
python -m whisper "%arquivo%" --language Portuguese --task transcribe

echo ================================
echo   Transcricao concluida!
echo ================================
pause
