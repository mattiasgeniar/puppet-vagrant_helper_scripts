Vagrant Helper scripts for Puppet
=================================

This repository will hold some useful scripts that help with developing Puppet modules combined with Vagrant.

This is, obviously, a work-in-progress and extra scripts will be greatly appreciated.

Contact
=======

Use github to send pull requests or log issues.

How to use?
===========

Include it in your manifest/modules as such:

<pre>class { 'vagrant_helper_scripts': } </pre>

vagrant_puppet_runonce
======================

This script does the same as a 'vagrant provision <boxname>', but within Vagrant itself so you lose the overhead of Ruby/Vagrant parsing.

<pre>user@mac:~$ time vagrant provision <boxname>
...
45.9s total</pre>

Inside the box:

<pre>root@box:~$ time vagrant_puppet_runonce.sh
...
15.4s total</pre>

There: you just cut down your testing time by factor 3x. Results will very depending on the size of your Puppet codebase.
