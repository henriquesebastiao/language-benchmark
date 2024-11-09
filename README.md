# Benchmark de Linguagens 📊

Este projeto foi feito por pura curiosidade! Gostaria de saber como diferentes linguagens de programação se comportam ao calcular os primeiros 100 mil números primos. Nada de muito sério, só uma comparação divertida para ver quem ganha em termos de performance. Talvez isso influencie uma próximalinguagem a estudar 😅.

### Linguagens Testadas

* Python v3.12.7
* JavaScript (Node.js v20.18.0)
* Java v17
* C (GCC v14.2.1)
* Go v1.23.2
* Ruby v3.3.5
* Rust (rustv v1.82.0)

### Hardware

Os testes foram executados em um hardware com as seguintes especificações:

* **OS**: Arch Linux
* **Kernel**: Linux 6.11.6
* **CPU**: 11th Gen Intel i5-1135G7 (8) @ 4.2GHz
* **GPU**: Intel TigerLake-LP GT2 [Iris Xe Graphics]
* **Memória**: 16GB

### Resultados 🏅

| Linguagem | Tempo (s) |
|-|-|
|Java|0.15|
|JavaScript|0.18|
|Go|0.25|
|C|0.28|
|Rust|0.69|
|Python|3.66|
|Ruby|8.67|

### O que você vai encontrar aqui

Scripts para cada linguagem e um arquivo CSV que guarda os resultados com o tempo de execução.

> [!TIP]
> Se você também é curioso e quer adicionar mais linguagens ou otimizar os códigos, sinta-se à vontade para fazer um fork e abrir um pull request!

### Execute Você Mesmo

Após instalar as dependências necessárias, execute o script com o comando:

```bash
./run.sh
```

## Licença

Este projeto está sob a licença MIT. Faça bom uso e divirta-se!
