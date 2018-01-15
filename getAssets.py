#!/usr/bin/python
'''
__author__ = 'Divyansh Prakash'
__edited__ = 'Mikhail Ameerally'
'''

import sys
import subprocess

if __name__ == '__main__':
    github_src = 'https://github.com/MikhailAmeerally/War/tree/master/War/Assets.xcassets'

    try:
        head, branch_etc = github_src.split('/tree/')
        folder_url = '/'.join(branch_etc.split('/')[1:])
    except:
        print 'err:\tnot a valid folder url!'
    else:
        print 'fetching...'
        subprocess.call(['svn', 'checkout', '/'.join([head, 'trunk', folder_url])])

