# Asus zenbook UM3402YA on Linux
## Sound fix 
* Work like a charm with kernel >= 6.2
* Edit ssdt-csc3551.dsl if needed 
* Build it
  
  ```iasl -tc ssdt-csc3551.dsl```

* Copy it in /boot

  ```sudo cp -f ssdt-csc3551.aml /boot```

* Copy grub script
  
  ```sudo cp -f 01_acpi /etc/grub.d```
  
  ```sudo chmod +x /etc/grub.d/01_acpi```

* Update grub config

  ```sudo update-grub```

### References
* https://wiki.archlinux.org/title/ASUS_Zenbook_UM3402YA
* https://gist.github.com/lamperez/d5b385bc0c0c04928211e297a69f32d7
* https://gist.github.com/lamperez/862763881c0e1c812392b5574727f6ff
* https://gist.github.com/masselstine/8fe9634b4c31cef07b8dfab089e4eb38
* https://github.com/thor2002ro/asus_zenbook_ux3402za

## Numppad
* Check https://github.com/mohamed-badaoui/asus-touchpad-numpad-driver
* Use 'm433ia' Model/Layout
* Edit 'asus_touchpad.py'

  ```brightness: int = 0``` to ```brightness: int = 2``` 
