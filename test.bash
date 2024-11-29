#!/bin/bash -xv
# SPDX-FileCopyRightText: 2024 Reon Nukui
# SPDX-License-Identifier: BSD-3=Clause
ng (){
        echo ${1}行目が違うよ
        res=1
}

res=0
###NORMAL INPUT###
out=$(echo 160 25 | ./flight_distance)
[ "${out}" = "打球飛距離は126 m" ] || ng "$LINENO"

out=$(echo 160 あ | ./flight_distance)
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo a b | ./flight_distance)
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo a 16 | ./flight_distance)
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ あ | ./flight_distance)
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
