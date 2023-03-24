- name: Use PEM file
  run: |
  echo ${{ secrets.PEM_FILE }} | base64 --decode > key.pem
  chmod 400 key.pem
  ssh -i key.pem user@host