#!/bin/sh

post='_posts'

today=`date +'%F'`
title=$1

if [ -z "$post" ] || [ -z "$today" ]; then
  echo "Error: System"
  exit 1
fi

if [ -z "$EDITOR" ]; then
  echo "Error: Not set EDITOR"
  exit 1
fi

if [ -z "$title" ]; then
  echo "Error: Argument"
  exit 1
fi

if [ -e "$post/$today-$title.md" ]; then
  echo "Error: Already exists. file=$post/$today-$title.md"
  exit 2
fi

post_date=`date +'%F %H:%M:%S %z'`

cat << EOS > "$post/$today-$title.md"
---
layout: post
title: "$1"
date: $post_date
categories:
  - 
tags:
  - 
---

EOS

$EDITOR "$post/$today-$title.md"

