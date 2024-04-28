/root/world:
  file.directory:
    - user: root
    - group: root
    - mode: 0600

/root/world/world.txt:
  file.managed:
#    - name: /root/world.txt
#    - contents: Hello John is egare!!
    - source: salt://world/files/world.txt.jinja
    - template: jinja
    - user: root
    - group: root
    - mode : 0600
