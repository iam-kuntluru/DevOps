# YAML
**YAML** (YAML Ain’t Markup Language) is a human-readable data serialization language. Ansible uses YAML to define playbooks because it’s:
- Simple to read and write.
- Supports nested structures (great for defining tasks, variables, and configurations).
- Clean syntax (no extra brackets or closing tags).

## Core YAML Rules
- Indentation matters
- Always use spaces, not tabs.
- Each level is usually 2 spaces in Ansible.

## 1 Key-value pairs
```
yaml
name: Install nginx
state: present
```
## 2 Strings, Numbers and Booleans:

```
string: Hello, World!
number: 42
boolean: true
```

## 3 Lists
```
yaml
fruits:
  - apple
  - banana
  - orange
```

## 4 Dictionaries (maps)
```
yaml
Copy
Edit
server:
  name: web01
  ip: 192.168.1.10
```

## 5 Lists of dictionaries (common in Ansible tasks)
```
YAML allows nesting of lists and dictionaries to represent more complex data.

family:
  parents:
    - name: Jane
      age: 50
    - name: John
      age: 52
  children:
    - name: Jimmy
      age: 22
    - name: Jenny
      age: 20

or

yaml
Copy
Edit
tasks:
  - name: Install nginx
    apt:
      name: nginx
      state: present
  - name: Start nginx
    service:
      name: nginx
      state: started
```


## Special YAML characters in Ansible
```
--- → Marks the start of a YAML file (optional but recommended for clarity).
# → Comment.
| → Preserve multi-line text exactly.
> → Fold multi-line text into a single line.
{{ variable_name }} → Reference an Ansible variable.
```
