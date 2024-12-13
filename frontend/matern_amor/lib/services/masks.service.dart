String addCepMask(String value) {
  // Remove qualquer máscara existente
  value = removeCepMask(value);

  if (value.length != 8) return value; // Verifica se o CEP tem 8 dígitos

  // Aplica a máscara: XXXXX-XXX
  return "${value.substring(0, 5)}-${value.substring(5, 8)}";
}

String removeCepMask(String value) {
  // Remove qualquer caractere não numérico
  return value.replaceAll(RegExp(r'[^0-9]'), '');
}
