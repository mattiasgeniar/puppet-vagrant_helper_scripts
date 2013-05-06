Vagrant Helper scripts for Puppet
=================================

This repository will hold some useful scripts that help with developing Puppet modules combined with Vagrant. All scripts are placed into /usr/bin so they can be called easily from the CLI.

This is, obviously, a work-in-progress and extra scripts will be greatly appreciated.

Contact
=======

Use github to send pull requests or log issues.

How to use?
===========

Include it in your manifest/modules as such:

<pre>class { 'vagrant_helper_scripts': } </pre>

vagrant_puppet_runonce.sh
=========================

This script does the same as a 'vagrant provision <boxname>', but within Vagrant itself so you lose the overhead of Ruby/Vagrant parsing. From the Mac, it takes quite a while:

<pre>user@mac:~$ time vagrant provision <boxname>
...
45.9s total</pre>

Inside the Vagrant box it's a lot faster:

<pre>root@box:~$ time vagrant_puppet_runonce.sh
...
15.4s total</pre>

There: you just cut down your testing time by factor 3x. Results will very depending on the size of your Puppet codebase.
