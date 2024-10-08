====================================
SSHLibrary 3.2.0 Release Candidate 1
====================================


.. default-role:: code


SSHLibrary_ is a `Robot Framework`_ test library for SSH and SFTP.
SSHLibrary 3.2.0rc1 is a new release with several enhancements and bug fixes.
All issues targeted for SSHLibrary v3.2.0 can be found from
the `issue tracker`_.

If you have pip_ installed, just run

::

   pip install --pre --upgrade robotframework-sshlibrary

to install the latest release or use

::

   pip install robotframework-sshlibrary==3.2.0rc1

to install exactly this version. Alternatively you can download the source
distribution from PyPI_ and install it manually.

SSHLibrary 3.2.0rc1 was released on Tuesday October 30, 2018.

.. _Robot Framework: http://robotframework.org
.. _SSHLibrary: https://github.com/MarketSquare/SSHLibrary
.. _pip: http://pip-installer.org
.. _PyPI: https://pypi.python.org/pypi/robotframework-sshlibrary
.. _issue tracker: https://github.com/MarketSquare/SSHLibrary/issues?q=milestone%3Av3.2.0


.. contents::
   :depth: 2
   :local:

Most important enhancements
===========================

The most important new features of SSHLibrary 3.2.0 are the new timeout
argument for `Execute Command` (`#127`_, alpha 1) and adding the option to strip
the prompt for `Read Until Prompt` keyword, similar with Telnet library
(`#247`_, alpha 1).

Backwards incompatible changes
==============================

The `Close Connection` keyword removes the connection from the alias list and
trying to switch to a closed connection will now result in keyword failure (`#233`_, alpha 1).

Acknowledgements
================

Great contributions for the following issues from Claudiu Dragan:

- Add *timeout* setting to `Execute Command` (`#127`_, alpha 1)
- Add *strip_prompt* argument to the `Read Until Prompt` keyword  (`#247`_, alpha 1)

Full list of fixes and enhancements
===================================

.. list-table::
    :header-rows: 1

    * - ID
      - Type
      - Priority
      - Summary
      - Added
    * - `#266`_
      - bug
      - high
      - Get File keyword IOError when trying to copy symbolic link
      - alpha 1
    * - `#260`_
      - bug
      - medium
      - Get/Put File keywords do not return folders containing square brackets
      - alpha 1
    * - `#127`_
      - enhancement
      - medium
      - Add timeout setting to 'Execute Command'
      - alpha 1
    * - `#247`_
      - enhancement
      - medium
      - Add strip_prompt argument to the Read Until Prompt keyword 
      - alpha 1
    * - `#233`_
      - bug
      - low
      - "Close Connection" keyword does not remove the connection from existing connections
      - alpha 1
    * - `#237`_
      - bug
      - low
      - Permission Denied for Put File with correct permissions
      - rc 1
    * - `#246`_
      - enhancement
      - low
      - Create Local SSH Tunnel could use a default port number for the remote_port
      - rc 1

Altogether 7 issues. View on the `issue tracker <https://github.com/MarketSquare/SSHLibrary/issues?q=milestone%3Av3.2.0>`__.

.. _#266: https://github.com/MarketSquare/SSHLibrary/issues/266
.. _#260: https://github.com/MarketSquare/SSHLibrary/issues/260
.. _#127: https://github.com/MarketSquare/SSHLibrary/issues/127
.. _#247: https://github.com/MarketSquare/SSHLibrary/issues/247
.. _#233: https://github.com/MarketSquare/SSHLibrary/issues/233
.. _#237: https://github.com/MarketSquare/SSHLibrary/issues/237
.. _#246: https://github.com/MarketSquare/SSHLibrary/issues/246
