function mascaraData(val) {
    var pass = val.value;
    var expr = /[0123456789]/;

    for (i = 0; i < pass.length; i++) {
        // charAt -> retorna o caractere posicionado no índice especificado
        var lchar = val.value.charAt(i);
        var nchar = val.value.charAt(i + 1);

        if (i == 0) {
            // search -> retorna um valor inteiro, indicando a posição do inicio da primeira
            // ocorrência de expReg dentro de instStr. Se nenhuma ocorrencia for encontrada o método retornara -1
            // instStr.search(expReg);
            if ((lchar.search(expr) != 0) || (lchar > 3)) {
                val.value = "";
            }

        } else if (i == 1) {

            if (lchar.search(expr) != 0) {
                // substring(indice1,indice2)
                // indice1, indice2 -> será usado para delimitar a string
                var tst1 = val.value.substring(0, (i));
                val.value = tst1;
                continue;
            }

            if ((nchar != '/') && (nchar != '')) {
                var tst1 = val.value.substring(0, (i) + 1);

                if (nchar.search(expr) != 0)
                    var tst2 = val.value.substring(i + 2, pass.length);
                else
                    var tst2 = val.value.substring(i + 1, pass.length);

                val.value = tst1 + '/' + tst2;
            }

        } else if (i == 4) {

            if (lchar.search(expr) != 0) {
                var tst1 = val.value.substring(0, (i));
                val.value = tst1;
                continue;
            }

            if ((nchar != '/') && (nchar != '')) {
                var tst1 = val.value.substring(0, (i) + 1);

                if (nchar.search(expr) != 0)
                    var tst2 = val.value.substring(i + 2, pass.length);
                else
                    var tst2 = val.value.substring(i + 1, pass.length);

                val.value = tst1 + '/' + tst2;
            }
        }

        if (i >= 6) {
            if (lchar.search(expr) != 0) {
                var tst1 = val.value.substring(0, (i));
                val.value = tst1;
            }
        }
    }

    if (pass.length > 10) {
        val.value = val.value.substring(0, 10);
        return true;
    }


}

function mascaraTelefone(telefone) {
    if (telefone.value.length == 0)
        telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
    if (telefone.value.length == 3)
        telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.

    if (telefone.value.length == 9)
        telefone.value = telefone.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.

}

function mascaraCelular(celular) {
    if (celular.value.length == 0)
        celular.value = '(' + celular.value;
    if (celular.value.length == 3)
        celular.value = celular.value + ') ';

    if (celular.value.length == 10)
        celular.value = celular.value + '-';

}

function mascaraCep(cep) {
    if (cep.value.length == 5)
        cep.value = cep.value + '-';
}

function mascaraCnpj(cnpj) {
    if (cnpj.value.length == 2)
        cnpj.value = cnpj.value + '.';
    if (cnpj.value.length == 6)
        cnpj.value = cnpj.value + '.';
    if (cnpj.value.length == 10)
        cnpj.value = cnpj.value + '/';
    if (cnpj.value.length == 15)
        cnpj.value = cnpj.value + '-';
}

function mascaraCpf(cpf) {
    if (cpf.value.length == 3)
        cpf.value = cpf.value + '.';
    if (cpf.value.length == 7)
        cpf.value = cpf.value + '.';
    if (cpf.value.length == 11)
        cpf.value = cpf.value + '-';
}

function mascaraRg(rg) {
    if (rg.value.length == 2)
        rg.value = rg.value + '.';
    if (rg.value.length == 6)
        rg.value = rg.value + '.';
    if (rg.value.length == 10)
        rg.value = rg.value + '-';
}

