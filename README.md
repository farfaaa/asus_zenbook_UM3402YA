# Asus zenbook UM3402YA on Linux
## Sound fix 
**_Note:_** This is irrelevant for kernel >= 6.8
* Work like a charm with kernel >= 6.2
* Edit ssdt-csc3551.dsl if needed 
* Build it
  
  ```iasl -tc ssdt_csc3551.dsl```

* Copy it in /boot

  ```sudo cp -f ssdt_csc3551.aml /boot```

* Copy grub script
  
  ```sudo cp -f 01_acpi /etc/grub.d```
  
  ```sudo chmod +x /etc/grub.d/01_acpi```

* Update grub config
  * Debian / Ubuntu based distributions

    ```sudo update-grub```

  * Fedora / RHEL-based distributions ( thanks @effepi0 )

    ```sudo grub2-mkconfig -o /etc/grub2.cfg```

    ```sudo grub2-mkconfig -o /etc/grub2-efi.cfg```

  * Arch based distributions ( thanks @kelna )

    ```grub-mkconfig -o /boot/grub/grub.cfg```

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

## Stylus Pen
* Check https://github.com/asus-linux-drivers/asus-stylus-driver
* Edit SA201H.py for customization
  
