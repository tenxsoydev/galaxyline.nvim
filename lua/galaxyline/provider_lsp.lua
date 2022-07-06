local get_lsp_client = function(bufnr, msg)
  msg = msg or 'Idle'
  local clients = {}
  local sep = '|'

  for _, client in pairs(vim.lsp.buf_get_clients(bufnr or 0)) do
    clients[#clients + 1] = client.name
  end
  if next(clients) then
    return table.concat(clients, sep)
  end
  return msg
end

return {
  get_lsp_client = get_lsp_client
}

