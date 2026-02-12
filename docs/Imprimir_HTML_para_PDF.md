# Imprimir HTML para PDF Aumentando o Tamanho da Folha

Quando você precisa imprimir uma página HTML como PDF e quer que todo o conteúdo caiba em uma única página, pode usar CSS `@media print` para customizar o tamanho da folha.

## Problema

Por padrão, ao imprimir um HTML para PDF, o navegador usa o tamanho de página padrão (A4, Carta, etc.) e o conteúdo pode ser quebrado em várias páginas, deixando partes em páginas diferentes.

## Solução com CSS

Use a propriedade `@page` dentro de `@media print` para aumentar o tamanho da folha:

```html
<!DOCTYPE html>
<html>
<head>
  <style>
    @media print {
      @page {
        size: 210mm 1000mm; /* Largura A4, mas com altura gigante, Tamanho da página (largura altura) */
      }
    }
  </style>
</head>
<body>
  <!-- Seu conteúdo HTML aqui -->
</body>
</html>
```

## Exemplos de Tamanhos de Página

| Tamanho | Valor CSS |
|---------|-----------|
| A4 padrão | `size: 210mm 297mm;` |
| Gigante na altura | `size: 210mm 1000mm;` |
| Quadrado grande | `size: 500mm 500mm;` |
| Largo | `size: 1000mm 297mm;` |
| Customizado | `size: 300mm 500mm;` |

## Propriedades Úteis de `@page`

```css
@media print {
  @page {
    size: 210mm 1000mm;      /* Tamanho da página (largura altura) */
    margin: 0;               /* Margens (superior, direita, inferior, esquerda) */
    margin-top: 10mm;        /* Margem superior */
    margin-right: 10mm;      /* Margem direita */
    margin-bottom: 10mm;     /* Margem inferior */
    margin-left: 10mm;       /* Margem esquerda */
  }
}
```

## Exemplo Completo

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Documento para PDF</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    @media print {
      @page {
        size: 210mm 1000mm;
        margin: 0;
      }
      
      body {
        margin: 0;
        padding: 0;
      }
      
      /* Evita quebras de página dentro de elementos importantes */
      .nao-quebrar {
        page-break-inside: avoid;
      }
      
      /* Remove elementos que não devem ser impressos */
      .nao-imprimir {
        display: none;
      }
    }

    body {
      font-family: Arial, sans-serif;
      padding: 20px;
    }

    h1 {
      color: #333;
      margin-bottom: 20px;
    }

    .conteudo {
      line-height: 1.6;
    }
  </style>
</head>
<body>
  <h1>Meu Documento para PDF</h1>
  
  <div class="conteudo nao-quebrar">
    <p>Conteúdo que não deve ser quebrado...</p>
  </div>
  
  <button class="nao-imprimir">Botão (não aparece no PDF)</button>
</body>
</html>
```

## Como Imprimir para PDF

### No navegador (Chrome, Firefox, Edge):

1. **Abra o documento HTML** no navegador
2. **Pressione `Ctrl+P`** (Windows/Linux) ou **`Cmd+P`** (Mac)
3. Escolha a opção **"Salvar como PDF"**
4. Ajuste se necessário (margens, cabeçalho, rodapé)
5. Clique em **"Salvar"**

## Dicas Extras

### 1. Controlar Quebras de Página

```css
@media print {
  .nao-quebrar {
    page-break-inside: avoid; /* Não quebra dentro do elemento */
  }
  
  .quebrar-antes {
    page-break-before: always; /* Quebra antes do elemento */
  }
  
  .quebrar-depois {
    page-break-after: always; /* Quebra depois do elemento */
  }
}
```

### 2. Ocultar Elementos na Impressão

```css
@media print {
  .nao-imprimir {
    display: none;
  }
  
  /* Mostrar elementos apenas na impressão */
  .apenas-imprimir {
    display: block;
  }
}
```

### 3. Cores e Fundos

```css
@media print {
  /* Força impressão de fundos coloridos */
  * {
    background: white !important;
    color: black !important;
  }
  
  a {
    text-decoration: underline;
  }
}
```

### 4. Ajustar Fonte para Impressão

```css
@media print {
  body {
    font-size: 12pt;
    line-height: 1.5;
  }
  
  h1 {
    font-size: 24pt;
  }
}
```

## Alternativas

### 1. Usar JavaScript (window.print())

```javascript
document.getElementById('btn-imprimir').addEventListener('click', function() {
  window.print();
});
```

### 2. Bibliotecas JavaScript

- **html2pdf.js**: Converte HTML para PDF no navegador
- **jsPDF**: Gera PDFs diretamente
- **Puppeteer**: Node.js, automação de navegador

Exemplo com html2pdf:
```javascript
html2pdf().set(options).fromElement(element).save();
```

## Notas Importantes

⚠️ **O tamanho da página pode variar** entre navegadores e sistemas operacionais

⚠️ **Nem todos os navegadores suportam** tamanhos personalizados de `@page`

✅ **Chrome e Edge** geralmente suportam bem

✅ **Firefox** suporta mas pode ter limitações

❓ **Safari** pode não respeitar tamanhos muito grandes

## Teste Antes de Imprimir

Sempre clique em "Visualizar" antes de salvar o PDF para verificar se o layout está correto:

1. Abra o developer tools (`F12`)
2. Vá para a aba **Console**
3. Ou use a visualização de impressão do navegador (`Ctrl+P`)
