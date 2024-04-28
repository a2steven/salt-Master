# Define User Properties (Editable by user)
user_properties:
  user_name: sjdoe
  uid: 2023
  gid: 2023
  groups:
    - wheel
    - sshers
  shell: /bin/bash
  fullname: sir john doe
  ssh_key: "ssh-rsa Example_Key"

# Node Matching and State Application
base:
  '*':
    - core/groups
    - users/{{ user_properties.user_name }}
  'p-ad-*':
    - core/core
    - include other specific user states as needed

# User and Group Configuration for Nodes
users:
  '{{ user_properties.user_name }}':
    group.present:
      - gid: {{ user_properties.gid }}
    user.present:
      - fullname: {{ user_properties.fullname }}
      - shell: {{ user_properties.shell }}
      - usergroup: True
      - uid: {{ user_properties.uid }}
      - gid: {{ user_properties.gid }}
      - groups: {{ user_properties.groups }}
    cmd.run:
      - name: "usermod -Z staff_u {{ user_properties.user_name }}"
      - unless: "sudo semanage login -l | grep {{ user_properties.user_name }} | grep -q staff_u"
    ssh_auth.present:
      - user: {{ user_properties.user_name }}
      - enc: ssh-rsa
      - config: "/.ssh/%u_authorized_keys"
      - names:
        - {{ user_properties.ssh_key }}

# Specific Environments (expand as needed)
'p-ad-dev*':
  - devDsk.core
  - devDsk.nvim
  - devDsk.tmux
  - devDsk.efs
