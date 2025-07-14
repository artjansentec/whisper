# 🎧 Transcrição de Áudio com OpenAI Whisper

Este projeto permite transcrever arquivos de áudio ou vídeo automaticamente utilizando o modelo Whisper da OpenAI.

Basta **arrastar o arquivo de mídia para cima do arquivo `.bat`** e o processo de transcrição será iniciado automaticamente.  
De forma simples e prática, o texto será extraído e salvo no formato desejado.

---

## ✅ Passo 1 — Instale o Python

Certifique-se de que o Python 3 esteja instalado no seu sistema.

- Baixe em: [https://www.python.org/downloads/](https://www.python.org/downloads/)
- No instalador, **marque a opção "Add Python to PATH"**

---

## 🔧 Passo 2 — Instale o FFmpeg

O Whisper depende do FFmpeg para processar arquivos de mídia.

### 🧰 Instalação recomendada (via terminal no Windows):

```bash
winget install ffmpeg
```

### 🔍 Teste a instalação:

```bash
ffmpeg -version
```

---

## 📦 Passo 3 — Instale o Whisper

No terminal do VSCode ou CMD, execute:

```bash
pip install git+https://github.com/openai/whisper.git
```

Se o `pip` não estiver disponível, instale com:

```bash
python -m ensurepip --upgrade
```

---

## 🚀 Passo 4 — Teste se o Whisper está funcionando

### 🎙️ Use este comando para transcrever seu áudio/vídeo:

```bash
whisper nome-do-arquivo.m4a --language Portuguese --task transcribe
```

> 🔁 Você também pode usar `.mp3`, `.mp4`, `.wav`, etc.

---

## ⚠️ Possíveis erros e soluções

### ❌ `whisper` não reconhecido no terminal

Use o módulo diretamente:

```bash
python -m whisper nome-do-arquivo.m4a --language Portuguese --task transcribe
```

---

### ❌ PyTorch não instalado

O Whisper precisa do PyTorch. Instale com:

```bash
pip install torch
```

### ✅ Ou tudo de uma vez (reinstala com dependências):

```bash
pip install git+https://github.com/openai/whisper.git --upgrade
```

---

## 💡 Dica extra: salvar em diferentes formatos

Você pode escolher o formato da transcrição com `--output_format`:

- `.txt` — Texto puro  
- `.srt` — Legendas estilo YouTube  
- `.vtt` — Legendas para players da web  
- `.json` — Dados estruturados

```bash
python -m whisper audio.mp4 --language Portuguese --task transcribe --output_format srt
```

---

Feito com ❤️ por Arthur
