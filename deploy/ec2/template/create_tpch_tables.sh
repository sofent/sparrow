#!/bin/bash
# Create shark tables for tpc-h benchmark

LOG=/disk1/sparrow/createTPCH.log

SHARK=/root/shark/bin/shark-withinfo
QUERY_DIR=/root/tpch

cd /disk1/sparrow/
echo "Making base tables"
$SHARK -f $QUERY_DIR/make_base_tables.hql > $LOG 2>&1

echo "Making test new table"
$SHARK -f $QUERY_DIR/make_test_table.hql > $LOG 2>&1
$SHARK -f $QUERY_DIR/make_test_table.hql > $LOG 2>&1

echo "Making demormalized table"
$SHARK -f $QUERY_DIR/make_denorm_table.hql > $LOG 2>&1

