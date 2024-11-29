#!/bin/bash -xv
# SPDX-FileCopyRightText: 2024 Reon Nukui
# SPDX-License-Identifier: BSD-3=Clause
ng (){
        echo ${1}行目が違うよ
        res=1
}

res=0
###NORMAL INPUT###
out=$(python3 ./kadai1 160 25)
[ "${out}" = "打球飛距離は126 m" ] || ng "$LINENO"

out=$(python3 ./kadai1 160 あ)
[ "${out}" = "" ] || ng "$LINENO"

out=$(python3 ./kadai1 a b)
[ "${out}" = "" ] || ng "$LINENO"

out=$(python3 ./kadai1 a 16)
[ "${out}" = "" ] || ng "$LINENO"

out=$(python3 ./kadai1 ああ)
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
