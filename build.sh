#!/bin/sh
set -xue
rm -fdr send2jabber
mkdir send2jabber && cd send2jabber
cp -r ../xmpppy/xmpp .
cp ../xmpppy/doc/examples/xsend.py __init__.py
cat __init__.py | sed -e 's%#!/usr/bin/python%#!/usr/bin/env python%' > __init__.py.new
mv __init__.py.new __init__.py
cd ${OLDPWD}

zip -r send2jabber.zip send2jabber

